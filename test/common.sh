#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

export WIZENG_LOC=${WIZENG_LOC:=$(cd $HERE/.. && pwd)}

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
NORM='[0;00m'

harness=$1
shift

### Check for a Virgil compiler and utility code
CUR_V3C=$(which v3c)

if [ ! -x "$CUR_V3C" ]; then
    echo "Virgil compiler (v3c) not found in PATH"
    exit 1
fi

# Progress arguments. By default the inline (i) mode is used, while the CI sets
# it to character (c) mode
PROGRESS_ARGS=${PROGRESS_ARGS:="tti"}
PROGRESS="progress $PROGRESS_ARGS"

if [ "$VIRGIL_LIB_UTIL" = "" ]; then
    if [ "$VIRGIL_LOC" = "" ]; then
	VIRGIL_LIB_UTIL=$(dirname $CUR_V3C)/../lib/util/
    else
	VIRGIL_LIB_UTIL=${VIRGIL_LOC}/lib/util
    fi
fi

if [ ! -e "$VIRGIL_LIB_UTIL/Vector.v3" ]; then
    echo "Virgil utility code not found (searched $VIRGIL_LIB_UTIL)."
    echo "Please set either: "
    echo "  VIRGIL_LOC, to the root of your Virgil installation"
    echo "  VIRGIL_LIB_UTIL, to point directly to these utilities"
    exit 1
fi

### Set up the test target
TEST_TARGET=${TEST_TARGET:=v3i}
T=/tmp/$USER/wizeng-test/$harness/$TEST_TARGET/$TEST_MODE/
mkdir -p $T

### Configure fatal and trace options
PROGRESS_PIPE=1
PROGRESS_PARALLEL=0
if [ "$(which progress)" = "" ]; then
    PROGRESS_PIPE=0
else
    progress p > /dev/null
    if [ $? = 0 ]; then
	PROGRESS_PARALLEL=1
	PROCESSORS=$(getconf _NPROCESSORS_ONLN)
    fi
fi

while [[ "$1" =~ ^\-.* ]]; do
    if [[ "$1" =~ "\--trace" ]]; then
	# turn off the progress pipe in verbose mode
	let PROGRESS_PIPE=0
    fi
    if [[ "$1" =~ "\-t" ]]; then
	# turn off the progress pipe in verbose mode
	let PROGRESS_PIPE=0
    fi
    WIZENG_OPTS="$WIZENG_OPTS $1"
    shift
done

if [ "$TEST_MODE" != "" ]; then
    WIZENG_OPTS="$WIZENG_OPTS -mode=$TEST_MODE"
fi

if [[ "$1" =~ "-fatal-calls=" ]]; then
    export V3C_OPTS="$1 $V3C_OPTS"
    shift
    let PROGRESS_PIPE=0
fi

if [[ "$1" = "-fatal" ]]; then
    # turn off the progress pipe in fatal error mode
    let PROGRESS_PIPE=0
fi

### Utility for making a specific binary
function make_binary() {
    cd $WIZENG_LOC
    local binary=$1
    local target=$2
    if [ "$target" = "" ]; then
	target=$TEST_TARGET
    fi
    local out=$T/$binary.build.out
    export BINARY=bin/$binary.$target
    make $BINARY 2>&1 > $out
    local ret=$?
    if [ $ret != 0 ]; then
	cat $out
	exit $ret
    fi
}

### Utility for printing a testing line
function print_testing() {
    ARG=$1
    printf "Testing ${CYAN}%-10s${NORM} " $harness
#TODO    printf "%-13s " $ARG
    printf "%-13s "  $TEST_TARGET
    if [ "$TEST_MODE" != "" ]; then
	mode="-mode=$TEST_MODE"
    else
        mode=""
    fi
    printf "%-13s " $mode
    printf "| "
}

function run_batched() {
    local batching=$1
    if [ "$batching" = "" ]; then
        batching=1
    fi
    shift
    local cmd=$1
    shift

    local i=1
    while [ $i -le $# ]; do
	local args=${@:$i:$batching}
        $cmd $args
	i=$(($i + $batching))
    done
}

function run_progress() {
    local cmd=$1
    shift

    local batching=${BATCHING:=1}
    local parallel=${PARALLEL:=$PROCESSORS}

    if [[ $parallel -gt 1 && PROGRESS_PARALLEL != 0 ]]; then
	# run in parallel mode
	local chunk=$(expr $# / $parallel)
	if [ $chunk = 0 ]; then
	    chunk=1
	fi

	local i=1
	local f=3
	local progress_cmd="progress p${PROGRESS_ARGS} "
	while [ $i -le $# ]; do
	    # divide the input up into chunks of 1 / p size
	    files=${@:$i:$chunk}
	    fifo=$T/fifo.$f
	    rm -f $fifo
	    mkfifo $fifo
	    # run command on chunk and pipe to fifo
	    if [ $chunk = 1 ]; then
		$cmd $files > $fifo &
	    else
		run_batched $batching "$cmd" $files > $fifo &
	    fi
	    progress_cmd="$progress_cmd $f<$fifo"
	    i=$(($i + $chunk))
	    f=$(($f + 1))
	done
	# combine all fifos using the progress command
	echo $progress_cmd > $T/progress.sh
	chmod 755 $T/progress.sh
	bash $T/progress.sh
    else
	# run in serial, possibly batched, mode
	if [ $PROGRESS_PIPE = 1 ]; then
	    run_batched $batching "$cmd" "$@" | $PROGRESS
	else
	    run_batched $batching "$cmd" "$@"
	fi
    fi
}
