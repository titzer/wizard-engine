#!/bin/bash

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
NORM='[0;00m'

if [ "$WIZENG_LOC" = "" ]; then
    WIZENG_LOC=$(cd $(dirname ${BASH_SOURCE[0]}/..) && pwd)
fi

echo Testing ${CYAN}wave${NORM}

cd $(dirname ${BASH_SOURCE[0]})/wave
WAVE=$WIZENG_LOC/bin/wave.jvm
export TMP=/tmp/$USER/wizeng-test/wave
mkdir -p $TMP

function ok() {
    echo '##-ok'
}

function test_echo() {
    echo 'running: test_echo'
    # TODO: remove extra space in echo.wasm output
    $WAVE ./echo.wasm 1 222 3ABC > $TMP/echo.wasm.1.out
    echo '1 222 3ABC ' > $TMP/echo.wasm.1.expect
    diff $TMP/echo.wasm.1.expect $TMP/echo.wasm.1.out
    if [ $? != 0 ]; then
	echo '##-fail: output does not match'
	return
    fi
    ok
}

function run_tests() {
    count=0;
    funcs="$(declare -Ff | grep 'test_' | cut -d ' ' -f3 | sort)"
    for f in $funcs; do
	count=$(($count + 1))
    done

    echo "##>$count"
    count=0;
    for test_func in $funcs; do
	echo "##+$test_func"
	$test_func
    done

}

run_tests | progress tt
