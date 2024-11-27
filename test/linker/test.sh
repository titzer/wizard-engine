#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
    HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/../common.sh Linker

make_wizeng || exit $?

print_testing
cd $HERE

TEST_COUNT=$(ls -d */ | wc -l)
TESTS=$(ls -d */)

RAW=${RAW:=0}

function run_tests {
    echo "##>$TEST_COUNT"
    for test in $TESTS; do
        testcase=$(basename "${test%/}")
        cd $test
        echo "##+$testcase"
        combined_files=""
        for file in *.wasm; do
            if [ "$file" != "main.wasm" ]; then
                if [ -n "$combined_files" ]; then
                    combined_files="$combined_files $file"
                else
                    combined_files="$file"
                fi
            fi
        done
        options="--expose=wizeng"
        $WIZENG_CMD -colors=false $options $combined_files main.wasm > $T/$testcase.out
        diff ../$testcase.out $T/$testcase.out | tee $T/$testcase.out.diff
        DIFF=${PIPESTATUS[0]}
        if [ "$DIFF" != 0  ]; then
            echo "##-fail"
        else
            echo "##-ok"
        fi
        rm $T/$testcase.out
        rm $T/$testcase.out.diff
        cd ..
    done
}

if [ "$RAW" = 0 ]; then
    run_tests | $PROGRESS
else
    run_tests
fi
