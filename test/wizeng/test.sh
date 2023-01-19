#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $DIR/../common.sh wizeng

make_binary wizeng || exit $?

WIZENG="../../$BINARY $WIZENG_OPTS"

target=$TEST_TARGET

print_testing 

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
