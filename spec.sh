#!/bin/bash

WIZENG=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

TEST_TARGET=jvm

WIZENG_OPTS=
while [[ "$1" =~ ^\-.* ]]; do
    if [[ "$1" =~ "\-trace" ]]; then
	# turn off the progress pipe in verbose mode
	let PROGRESS_PIPE=0
    fi
    WIZENG_OPTS="$WIZENG_OPTS $1"
    shift
done

function run {
    BRANCH=$1
    cd $WIZENG/wasm-spec/$BRANCH/test/core/bin/
    TESTS=$(ls *.bin.wast)
    COUNT=$(echo $TESTS | awk '{print NF}')

    # run unittests and pipe through progress program
    echo "##>${COUNT}"
    for t in $TESTS; do
	$WIZENG/bin/spectest.$TEST_TARGET $WIZENG_OPTS $t
    done
}

BRANCHES="$*"
if [ "$BRANCHES" = "" ]; then
    BRANCHES=spec
fi

for b in $BRANCHES; do
    if [ ! -d "$WIZENG/wasm-spec/$b" ]; then
	echo Spec branch \"$WIZENG/wasm-spec/$b\" does not exist.
	exit 1
    fi
    echo Testing $b
    run $b | tee /tmp/wizeng-spec-$b.out | progress
done
