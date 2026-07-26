#!/usr/bin/env bash

# Runs the externalized binary tests in this directory through the reference interpreter and
# reports where it disagrees with Wizard.
#
# Each file corresponds to one Wizard unit test and asserts, for every module that test
# decoded, only whether the specification should reject it while decoding
# (assert_malformed) or while validating (assert_invalid). Expected messages are left empty
# so that only the phase is compared; see test/unittest/BinRecorder.v3.
#
# The reference interpreter stops at the first failing assertion in a file, so any file that
# disagrees is re-run one trial at a time to attribute the disagreement and to find the rest.

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

WIZENG_LOC=$(cd $HERE/../../../ && pwd)
SPEC_LOC=${SPEC_LOC:=$WIZENG_LOC/wasm-spec/repos/spec}
SPEC_INT=${SPEC_INT:=$SPEC_LOC/interpreter/wasm}

if [ ! -x "$SPEC_INT" ]; then
    echo "WebAssembly reference interpreter not found: $SPEC_INT"
    echo "Set SPEC_INT to point at it."
    exit 1
fi

TESTS="$@"
if [ "$TESTS" = "" ]; then
    TESTS=$(ls $HERE/*.bin.wast 2>/dev/null)
fi
if [ "$TESTS" = "" ]; then
    echo "No tests found; run $HERE/record.sh first."
    exit 1
fi

TMP=$(mktemp -d)
trap "rm -rf $TMP" EXIT

REPORT=$TMP/report
: > $REPORT
FILES_OK=0
FILES_BAD=0

for t in $TESTS; do
    if $SPEC_INT $t > /dev/null 2>&1; then
        FILES_OK=$((FILES_OK + 1))
        continue
    fi
    FILES_BAD=$((FILES_BAD + 1))
    base=$(basename $t .bin.wast)

    # Split into one file per trial. The recorder writes a ";; unittest <test>[n]: <PHASE>
    # <CODE>" comment above each module, which both delimits the trials and labels them.
    rm -f $TMP/split.*
    awk -v dir="$TMP" '
        /^;; .*\[[0-9]+\]: / { n++; f = sprintf("%s/split.%04d.bin.wast", dir, n) }
        n > 0 { print > f }
    ' $t

    echo "== $base"
    for s in $(ls $TMP/split.* 2>/dev/null); do
        out=$($SPEC_INT $s 2>&1)
        [ $? = 0 ] && continue
        label=$(head -1 $s | sed 's/^;; unittest //')
        # "<test>[n]: <PHASE> <CODE> [<extensions>]"
        wizard=$(echo "$label" | sed -e 's/^[^ ]* //' -e 's/ \[.*//')
        reason=$(echo "$out" | tail -1 | sed -e 's/.*: //')
        echo "   $label"
        echo "      reference: $reason"
        echo "$wizard | $reason" >> $REPORT
    done
done

echo
echo "files: $FILES_OK agreed, $FILES_BAD disagreed"
if [ $FILES_BAD = 0 ]; then exit 0; fi

echo
echo "Disagreeing trials, by what Wizard concluded and what the reference said."
echo "A whole class sharing one Wizard error code usually means the phase mapping in"
echo "BinRecorder.phaseOf is wrong for that code, not that the engines truly differ:"
sort $REPORT | uniq -c | sort -rn | sed 's/^/   /'
echo
echo "   total disagreeing trials: $(wc -l < $REPORT | tr -d ' ')"
exit 1
