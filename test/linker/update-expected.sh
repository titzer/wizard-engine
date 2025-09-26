#!/usr/bin/env bash
TESTS=$(ls -d */)

function run_tests {
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
        wizeng $options $combined_files main.wasm  > ../$testcase.out
        cd ..
    done
}

run_tests
