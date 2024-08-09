#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
    DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $DIR/../../common.sh R3-monitor

make_binary wizeng || exit $?

WIZENG="../../../$BINARY $WIZENG_OPTS -nocolor"

print_testing
cd $DIR

V3C=${V3C:=$(which v3c)}
V3C_LOC=$(dirname $(which v3c))
VIRGIL_LOC=$(cd $V3C_LOC/../ && pwd)
VIRGIL_LIB=${VIRGIL_LOC}/lib/

TESTS=$(ls *.wasm)
TESTS_COUNT=$(ls *.wasm | wc -l)

RAW=${RAW:=0}

function run_tests {
    echo "##>$TESTS_COUNT"
    for file in $TESTS; do
        testcase=$(basename "${file%.*}")
        echo "##+$testcase"
        trace_file="${file%.*}.r3"
        $WIZENG '--monitors=r3{exclude=r3*}' $file | v3i $VIRGIL_LIB/util/*.v3 validate-trace.v3 $trace_file
        if [ $? -ne 0 ]; then
            echo "##-fail"
        else
            echo "##-ok"
        fi
    done
}

if [ "$RAW" = 0 ]; then
    run_tests | $PROGRESS
else
    run_tests
fi