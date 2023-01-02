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

CMD="$BINARY -expected=$WIZENG_LOC/test/regress.failures -expected=$WIZENG_LOC/test/regress.failures.${TEST_TARGET}"

cd $WIZENG_LOC

function run_tests() {
    ext=$1
    print_testing $ext
    LOG=$T/regress$ext.sh.log
    if [ $PROGRESS_PIPE = 1 ]; then
	$CMD $ext $TESTS | tee $LOG | progress tti
    else
	$CMD $ext $TESTS | tee $LOG
    fi
}

TESTS="$@"

if [ "$TESTS" =  "" ]; then
    for dir in core gen; do
	TESTS=$(ls test/regress/$dir/*.bin.wast)
	run_tests $dir
    done
    
    for ext in $(find test/regress -type d) ; do
	if [[ $ext =~ test/regress/(ext:.*) ]]; then
	    arg="-${BASH_REMATCH[1]}"
	    TESTS="$ext/*.bin.wast"
	    run_tests $arg
	fi
    done
else
    run_tests
fi

