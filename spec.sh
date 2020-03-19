#!/bin/bash

WIZENG=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

CORE_TEST=$WIZENG/core-test/bin/

if [[ "$1" =~ "-trace" ]]; then
    # turn off the progress pipe in verbose mode
    let PROGRESS_PIPE=0
fi

cd $CORE_TEST
TESTS=$(ls *.wast)
COUNT=$(echo $TESTS | awk '{print NF}')

# run unittests and pipe through progress program
function run() {
echo "#${COUNT}"
for t in $TESTS; do
    $WIZENG/bin/wizeng-spec.x86-linux $t
done
}

run | progress
