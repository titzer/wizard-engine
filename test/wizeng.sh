#!/bin/bash

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
NORM='[0;00m'

if [ "$WIZENG_LOC" = "" ]; then
    WIZENG_LOC=$(cd $(dirname ${BASH_SOURCE[0]}/..) && pwd)
fi

if [ "$TEST_TARGET" = "" ]; then
    TEST_TARGET=int
fi

function make_wizeng() {
    cd $WIZENG_LOC
    make bin/wizeng.${TEST_TARGET} 2>&1 > /tmp/wizeng.build.out
    RET=$?
    if [ "$RET" != 0 ]; then
	cat /tmp/wizeng.build.out
	exit $RET
    fi
}

(make_wizeng)
RET=$?
if [ "$RET" != 0 ]; then
    exit $RET
fi

printf "Testing ${CYAN}%-10s${NORM} %-13s | " wizeng $TEST_TARGET

cd $(dirname ${BASH_SOURCE[0]})/wave
WIZENG=$WIZENG_LOC/bin/wizeng.$TEST_TARGET
export TMP=/tmp/$USER/wizeng-test/wave
mkdir -p $TMP

function ok() {
    echo '##-ok'
}

function test_echo() {
    echo 'running: test_echo'
    # TODO: remove extra space in echo.wasm output
    $WIZENG ./echo.wasm 1 222 3ABC > $TMP/echo.wasm.1.out
    EXIT=$?
    if [ $EXIT != 0 ]; then
	echo "##-fail: wizeng exit code $EXIT"
	return
    fi
    echo './echo.wasm 1 222 3ABC ' > $TMP/echo.wasm.1.expect
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

run_tests | progress tti
