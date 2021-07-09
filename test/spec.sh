#!/bin/bash

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
NORM='[0;00m'

if [ "$WIZENG_LOC" = "" ]; then
    WIZENG_LOC=$(cd $(dirname ${BASH_SOURCE[0]}/..) && pwd)
fi

SPEC_ROOT=$WIZENG_LOC/wasm-spec

WIZENG_OPTS=
let PROGRESS_PIPE=1
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

function run {
    BRANCH=$1
    cd $SPEC_ROOT/$BRANCH/test/core/bin/
    TESTS=$(ls *.bin.wast)
    COUNT=$(echo $TESTS | awk '{print NF}')

    # run unittests and pipe through progress program
    echo "##>${COUNT}"
    for t in $TESTS; do
	$WIZENG_LOC/bin/spectest.$TEST_TARGET $WIZENG_OPTS $t
    done
}

BRANCHES="$*"
if [ "$BRANCHES" = "" ]; then
    BRANCHES=spec
fi

if [ "$TEST_TARGET" = "" ]; then
    TEST_TARGET=int
fi

function make_spectest() {
    cd $WIZENG_LOC
    make bin/spectest.${TEST_TARGET} 2>&1 > /tmp/spectest.build.out
    RET=$?
    if [ "$RET" != 0 ]; then
	cat /tmp/spectest.build.out
	exit $RET
    fi
}

(make_spectest)
RET=$?
if [ "$RET" != 0 ]; then
    exit $RET
fi

for b in $BRANCHES; do
    if [ ! -d "$SPEC_ROOT/$b" ]; then
	echo Spec branch \"$SPEC_ROOT/$b\" does not exist.
	exit 1
    fi
    printf "Testing ${CYAN}$SPEC_ROOT/$b${NORM} ($TEST_TARGET) | "
    if [ $PROGRESS_PIPE = 1 ]; then
	run $b | tee /tmp/wizeng-spec-$b.out | progress tti
    else
	run $b | tee /tmp/wizeng-spec-$b.out
    fi
done
