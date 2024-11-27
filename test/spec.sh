#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/common.sh spec

PROPOSALS="$@"
if [ "$PROPOSALS" = "" ]; then
    PROPOSALS=spec
fi

make_binary spectest || exit $?

function run {
    p=$1
    cd $WIZENG_LOC

    TESTS=$(find test/wasm-spec/bin/$p -name '*.bin.wast')

    if [[ "$p" != "spec" && "$p" != "" ]]; then
	EXT_OPTS="-ext:$p"
    fi

    run_batched $BATCHING "$WIZENG_LOC/bin/spectest.$TEST_TARGET $WIZENG_OPTS $EXT_OPTS" $TESTS
}

FAIL=0
for p in $PROPOSALS; do
    print_testing $p

    if [ $PROGRESS_PIPE = 1 ]; then
	run $p | tee $T/spec.$p.out | $PROGRESS
    else
	run $p | tee $T/spec.$p.out
    fi
    result=$?
    FAIL=$(($FAIL | $result))
done

exit $FAIL
