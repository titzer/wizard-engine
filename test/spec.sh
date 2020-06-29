#!/bin/bash

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
NORM='[0;00m'

if [ "$WIZENG_LOC" = "" ]; then
    WIZENG_LOC=$(cd $(dirname ${BASH_SOURCE[0]}/..) && pwd)
fi

TEST_TARGET=jvm
SPEC_ROOT=$WIZENG_LOC/wasm-spec

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

for b in $BRANCHES; do
    if [ ! -d "$SPEC_ROOT/$b" ]; then
	echo Spec branch \"$SPEC_ROOT/$b\" does not exist.
	exit 1
    fi
    echo Testing ${CYAN}$SPEC_ROOT/$b${NORM}
    run $b | tee /tmp/wizeng-spec-$b.out | progress tt
done
