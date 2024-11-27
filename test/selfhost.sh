#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/common.sh selfhost

make_wizeng || exit $?
HOST_WIZENG=$WIZENG_CMD

make_binary unittest wasm || exit $?
GUEST_WIZENG=$BINARY

cd $WIZENG_LOC

CMD="$HOST_WIZENG $GUEST_WIZENG -expected=$WIZENG_TEST/unittest.failures -expected=$WIZENG_TEST/unittest.failures.wasm"

print_testing

LOG=$T/selfhost.unittest.sh.log
if [ $PROGRESS_PIPE = 1 ]; then
    $CMD "$@" | tee $LOG | $PROGRESS
else
    $CMD "$@" | tee $LOG
fi
