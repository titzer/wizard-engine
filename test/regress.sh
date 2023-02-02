#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/common.sh regress

make_binary spectest || exit $?

CMD="$BINARY $WIZENG_OPTS -expected=$WIZENG_LOC/test/regress.failures -expected=$WIZENG_LOC/test/regress.failures.${TEST_TARGET}"

cd $WIZENG_LOC

TESTS="$@"

function run_tests() {
    if [ "$TESTS" =  "" ]; then
        for dir in core gen; do
	    TESTS=$(ls test/regress/$dir/*.bin.wast)
	    $CMD $TESTS
        done
    
    for ext in $(find test/regress -type d) ; do
	if [[ $ext =~ test/regress/(ext:.*) ]]; then
	    arg="-${BASH_REMATCH[1]}"
	    TESTS="$ext/*.bin.wast"
	    $CMD $arg $TESTS
	fi
    done
    else
        $CMD $TESTS
    fi
}

print_testing

LOG=$T/regress.sh.log
if [ $PROGRESS_PIPE = 1 ]; then
    run_tests | tee $LOG | progress tti
else
    run_tests | tee $LOG
fi
