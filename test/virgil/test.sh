#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $DIR/../common.sh virgil

make_binary spectest || exit $?

CMD="$WIZENG_LOC/$BINARY $WIZENG_OPTS "

TESTS="$@"

cd $DIR
if [ "$TESTS" =  "" ]; then
    for dir in bin; do
	TESTS=$(ls $dir/*.bin.wast)
    done
fi

print_testing

BATCHING=1000

if [ "$TEST_TARGET" = int ]; then
    BATCHING=200
fi

LOG=$T/regress.sh.log
if [ $PROGRESS_PIPE = 1 ]; then
    run_batched $BATCHING $CMD $TESTS | tee $LOG | $PROGRESS
else
    run_batched $BATCHING $CMD $TESTS | tee $LOG
fi
