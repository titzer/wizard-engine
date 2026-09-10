#!/usr/bin/env bash

if [ $# -lt 2 ]; then
    echo "This script calibrates the inner loop of benchmark templates on the given engine and updates"
    echo "the INNER_CALIBRATION of each template in place, so that an inner_ms of 1 runs for 1ms."
    echo "Usage: calibrate.bash <engine command> <input.wat>..."
    echo "  CALIBRATE_MS=<ms>  nominal running time of the first measurement (default 100)"
    echo "  MAX_MS=<ms>        maximum nominal running time of a measurement (default 1000000)"
    echo "  MIN_DIFF=<s>       minimum measured difference between the two sizes (default 0.02)"
    echo "  RUNS=<n>           number of runs per measurement; the minimum is used (default 5)"
    echo "  VERIFY=0           skip re-measuring after updating"
    echo "  VERBOSE=1          print every measurement"
    echo "  WAT2WASM=<cmd>     translator from .wat to .wasm (default: the spec interpreter, or wat2wasm)"
    exit 1
fi
ENGINE=$1
shift

HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# Prefer the spec interpreter, which understands all extensions, and fall back to wat2wasm.
SPEC_INT=$HERE/../../wasm-spec/repos/spec/interpreter/wasm
if [ -z "$WAT2WASM" ]; then
    if [ -x $SPEC_INT ]; then
	WAT2WASM=$SPEC_INT
    else
	WAT2WASM="$(which wat2wasm) --enable-all"
    fi
fi
CALIBRATE_MS=${CALIBRATE_MS:=100}
MAX_MS=${MAX_MS:=1000000}
MIN_DIFF=${MIN_DIFF:=0.02}
RUNS=${RUNS:=5}
VERIFY=${VERIFY:=1}
VERBOSE=${VERBOSE:=0}
T=$(mktemp -d)
trap "rm -rf $T" EXIT

echo "WAT2WASM=\"$WAT2WASM\""
echo "ENGINE=\"$ENGINE\""

# Generates {input} with the given inner_ms, runs it, and prints the minimum time in seconds.
function measure() {
    local input=$1 inner_ms=$2
    if ! $HERE/gen.bash $input 1 $inner_ms > $T/test.wat; then
	echo >&2
	echo "  generating inner_ms=$inner_ms failed" >&2
	return 1
    fi
    if ! $WAT2WASM $T/test.wat -o $T/test.wasm > $T/wat2wasm.log 2>&1; then
	echo >&2
	echo "  $WAT2WASM failed on inner_ms=$inner_ms:" >&2
	tail -8 $T/wat2wasm.log | sed 's/^/    /' >&2
	return 1
    fi
    btime -i $RUNS $ENGINE $T/test.wasm > $T/btime.log 2>&1
    # btime prints the times of the runs on its last line, separated by control characters.
    local min=$(tail -1 $T/btime.log | tr -c '0-9.\n' '\n' | grep -E '^[0-9]+\.[0-9]+$' | sort -g | head -1)
    if [ -z "$min" ]; then
	echo >&2
	echo "  run with inner_ms=$inner_ms failed:" >&2
	tr -c '[:print:]\n' '\n' < $T/btime.log | grep -v '^ *$' | tail -8 | sed 's/^/    /' >&2
	return 1
    fi
    [ "$VERBOSE" != 0 ] && echo "  inner_ms=$inner_ms: ${min}s" >&2
    echo $min
}

# Measures the real milliseconds per nominal millisecond of {input}. Two sizes are measured and
# the difference is taken, which cancels out the fixed cost of starting the engine. The sizes
# are increased until the difference is large enough to measure reliably.
function ratio() {
    local input=$1
    local ms=$CALIBRATE_MS t1 t2 diff
    while true; do
	t1=$(measure $input $ms) || return 1
	t2=$(measure $input $((2 * ms))) || return 1
	diff=$(bc <<< "scale=6; $t2 - $t1")
	if [ $(bc <<< "$diff >= $MIN_DIFF") = 1 ]; then break; fi
	if [ $ms -ge $MAX_MS ]; then
	    echo >&2
	    echo "  difference between inner_ms=$ms (${t1}s) and inner_ms=$((2 * ms)) (${t2}s) is too small" >&2
	    return 1
	fi
	ms=$((10 * ms))
    done
    bc <<< "scale=6; $diff * 1000 / $ms"
}

status=0
for input in "$@"; do
    old=$(grep INNER_CALIBRATION $input | head -1 | cut -d= -f2 | tr -d ' ')
    old=${old:=1}
    printf "%-32s %8s" $input $old

    r=$(ratio $input)
    if [ $? != 0 ] || [ -z "$r" ]; then
	echo "  measurement failed"
	status=1
	continue
    fi

    new=$(bc <<< "scale=6; x = $old / $r; scale=0; (x + 0.5) / 1")
    [ "$new" -lt 1 ] && new=1
    printf "  measured %8.3fms/ms  -> %8d" $r $new

    if grep -q INNER_CALIBRATION $input; then
	sed "s/INNER_CALIBRATION *= *[0-9]*/INNER_CALIBRATION = $new/" $input > $T/updated.wat
    else
	{ echo ";; INNER_CALIBRATION = $new"; cat $input; } > $T/updated.wat
    fi
    cp $T/updated.wat $input

    if [ "$VERIFY" != 0 ]; then
	r=$(ratio $input) && printf "  verified %8.3fms/ms" $r
    fi
    echo
done
exit $status
