#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

if [ "$WIZENG_LOC" = "" ]; then
    WIZENG_LOC=$(cd $DIR/../../ && pwd)
fi

if [ "$TEST_TARGET" = "" ]; then
    TEST_TARGET=int
fi

target=$TEST_TARGET

function make_wizeng() {
    cd $WIZENG_LOC
    make bin/wizeng.${TEST_TARGET} 2>&1 > /tmp/wizeng.build.out
    RET=$?
    if [ "$RET" != 0 ]; then
	cat /tmp/wizeng.build.out
	exit $RET
    fi
}

(make_wizeng)
RET=$?
if [ "$RET" != 0 ]; then
    exit $RET
fi

printf "Testing ${CYAN}%-10s${NORM} %-13s | " wizeng $TEST_TARGET

WIZENG=$WIZENG_LOC/bin/wizeng.$TEST_TARGET
export T=/tmp/$USER/wizeng-test/wizeng/$target
mkdir -p $T

cd $DIR
if [ "$#" = 0 ]; then
    TESTS=$(ls *.wasm)
else
    TESTS="$@"
fi

function run_test() {
    local test=$1
    local flags=""
    local args=""

    echo "##+$test"

    if [ -f $test.args ]; then
	args=$(cat $test.args)
    fi
    if [ -f $test.flags ]; then
	flags=$(cat $test.flags)
    fi

    local P=$T/$test

    if [ -f $test.in ]; then
	$WIZENG $flags $test $args < $test.in > $P.out 2> $P.err
    else
	$WIZENG $flags $test $args > $P.out 2> $P.err
    fi
    echo $? > $P.exit

    for check in "out" "err" "exit"; do
	if [ -f $test.$check ]; then
	    diff $test.$check $P.$check | tee $P.$check.diff
	    DIFF=${PIPESTATUS[0]}
	    if [ "$DIFF" != 0 ]; then
		if [ -f failures.$target ]; then
		    grep $test failures.$target
		    if [ $? = 0 ]; then
			continue # test was found in expected failures
		    fi
		fi
		echo "##-fail: $P.$check.diff"
		return 1
	    fi
	fi
    done

    echo "##-ok"
}

function run_tests() {
    printf "##>%d\n" $#
    for t in $@; do
	run_test $t
    done
}

run_tests $TESTS | progress tti
