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

WIZENG="../../../$BINARY $WIZENG_OPTS -colors=false"

print_testing
cd $DIR

V3C=${V3C:=$(which v3c)}
V3C_LOC=$(dirname $(which v3c))
VIRGIL_LOC=$(cd $V3C_LOC/../ && pwd)
VIRGIL_LIB=${VIRGIL_LOC}/lib/

R3_FE_TESTS=$(ls *.wasm | grep -v index)
R3_BE_TESTS=$(ls *.index.wasm)
R3_ALL_TESTS_COUNT=$(ls *.wasm | wc -l)

RAW=${RAW:=0}

function run_fe_tests {
    for file in $R3_FE_TESTS; do
        testcase=$(basename "${file%.wasm}")
        echo "##+$testcase (frontend)"
        trace_file="${file%.*}.r3"
        $WIZENG '--monitors=r3{exclude=r3*}' $file | v3i $VIRGIL_LIB/util/*.v3 validate-trace.v3 $trace_file
        if [ $? -ne 0 ]; then
            echo "##-fail"
        else
            echo "##-ok"
        fi
    done
}

function run_be_tests {
    for file in $R3_BE_TESTS; do
        testcase=$(basename "${file%.index.wasm}")
        echo "##+$testcase (backend)"
        options="--monitors=r3-replay{trace_file=${testcase}.r3},r3"
        $WIZENG $options $file > $T/$file.out #| v3i $VIRGIL_LIB/util/*.v3 validate-trace.v3 $trace_file
        diff $testcase.r3 $T/$file.out | tee $T/$file.out.diff
        DIFF=${PIPESTATUS[0]}
        if [ "$DIFF" != 0  ]; then
            echo "##-fail"
        else
            echo "##-ok"
        fi
    done
}

function run_tests {
    echo "##>$R3_ALL_TESTS_COUNT"
    run_fe_tests
    run_be_tests
}

if [ "$RAW" = 0 ]; then
    run_tests | $PROGRESS
else
    run_tests
fi
