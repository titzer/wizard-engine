#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/common.sh unit

make_binary unittest || exit $?

CMD="$BINARY $WIZENG_OPTS -expected=$WIZENG_LOC/test/unittest.failures -expected=$WIZENG_LOC/test/unittest.failures.${TEST_TARGET}"

print_testing
# run unittests and pipe through progress program
LOG=$T/unit.sh.log
if [ $PROGRESS_PIPE = 1 ]; then
    $CMD "$@" | tee $LOG | progress tti
else
    $CMD "$@" | tee $LOG
fi
