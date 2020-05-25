#!/bin/bash

WIZENG=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

TEST_TARGET=jvm
CORE_TEST=$WIZENG/core-test/bin/

if [[ "$1" =~ "-trace" ]]; then
    # turn off the progress pipe in verbose mode
    let PROGRESS_PIPE=0
fi

cd $CORE_TEST
TESTS=$(ls *.bin.wast)
COUNT=$(echo $TESTS | awk '{print NF}')

# run unittests and pipe through progress program
function run() {
echo "##>${COUNT}"
for t in $TESTS; do
    $WIZENG/bin/spectest.$TEST_TARGET $t
done
}

run | tee /tmp/wizeng-spec-test.out | progress
