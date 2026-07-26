#!/usr/bin/env bash

# Fills in the expected failure messages of the recorded .bin.wast files.
#
# The recorder writes an empty expected message, because Wizard's error codes are not the
# specification's message texts. Wherever Wizard and the reference interpreter agree that a
# module should be rejected, and agree on the phase, this replaces the empty message with the
# one the reference interpreter actually produces, which is what the hand-written spec tests
# carry. Trials where the two disagree keep an empty message; check.sh reports those.
#
# The message is discovered by asserting a sentinel that cannot match, which makes the
# reference interpreter print the message it expected to see instead.

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
    exit 1
fi

TESTS="$@"
if [ "$TESTS" = "" ]; then
    TESTS=$(ls $HERE/*.bin.wast 2>/dev/null)
fi

TMP=$(mktemp -d)
trap "rm -rf $TMP" EXIT

SENTINEL='@@no-such-message@@'
FILLED=0
LEFT=0

for t in $TESTS; do
    rm -f $TMP/t.*
    awk -v dir="$TMP" '
        /^;; .*\[[0-9]+\]: / { n++; f = sprintf("%s/t.%04d.bin.wast", dir, n) }
        n > 0 { print > f }
    ' $t

    : > $TMP/msgs
    for s in $(ls $TMP/t.*.bin.wast 2>/dev/null); do
        if ! grep -q '(assert_' $s; then
            echo "" >> $TMP/msgs           # a valid module has no message
            continue
        fi
        # The message is the last line of the trial that is a bare indented string; replace
        # whatever is there so that this is idempotent on already-filled files.
        awk -v sentinel="$SENTINEL" '
            { line[NR] = $0; if ($0 ~ /^  "/) last = NR }
            END { for (i = 1; i <= NR; i++) print (i == last) ? "  \"" sentinel "\"" : line[i] }
        ' $s > $TMP/probe.bin.wast
        out=$($SPEC_INT $TMP/probe.bin.wast 2>&1)
        # "Result: "<message>"" appears only when the module was rejected in the expected
        # phase but with a different message, which is exactly the case we want.
        msg=$(echo "$out" | grep '^Result: ' | head -1 | sed -e 's/^Result: "//' -e 's/"$//')
        # A message containing a quote or backslash would not survive being written back
        # into a string literal; leave those empty rather than emit something malformed.
        case "$msg" in
            *\"*|*\\*) msg="" ;;
        esac
        echo "$msg" >> $TMP/msgs
    done

    # Substitute the discovered message into the last string line of each trial.
    awk -v msgfile="$TMP/msgs" '
        BEGIN { i = 0; while ((getline line < msgfile) > 0) msgs[++i] = line }
        /^;; .*\[[0-9]+\]: / {
            if (n > 0) flush()
            n++; c = 0; last = 0
        }
        { if (n == 0) { print; next }          # header, before the first trial
          buf[++c] = $0; if ($0 ~ /^  "/) last = c }
        END { if (n > 0) flush() }
        function flush(   i) {
            for (i = 1; i <= c; i++) {
                if (i == last && last > 0 && msgs[n] != "") print "  \"" msgs[n] "\""
                else print buf[i]
            }
            c = 0
        }
    ' $t > $TMP/out && mv $TMP/out $t

    f=$(grep -c . $TMP/msgs)
    l=$(( $(grep -c '(assert_' $t) - f ))
    FILLED=$((FILLED + f))
    LEFT=$((LEFT + l))
    echo "  $(basename $t): $f filled, $l left empty"
done

echo
echo "filled $FILLED message(s); $LEFT left empty (Wizard and the reference disagree there)"
