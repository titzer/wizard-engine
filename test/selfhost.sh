#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/common.sh selfhost

make_binary wizeng || exit $?
CMD="$BINARY $WIZENG_OPTS $WIZENG_LOC/bin/unittest.wasm -expected=$WIZENG_LOC/test/unittest.failures -expected=$WIZENG_LOC/test/unittest.failures.wasm"

make_binary unittest wasm || exit $?

print_testing

cd $HERE/../

LOG=$T/selfhost.unittest.sh.log
if [ $PROGRESS_PIPE = 1 ]; then
    $CMD "$@" | tee $LOG | $PROGRESS
else
    $CMD "$@" | tee $LOG
fi
