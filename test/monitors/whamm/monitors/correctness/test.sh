#!/usr/bin/env bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/../../../../common.sh whamm

make_wizeng || exit $?

target=$TEST_TARGET

print_testing

cd $HERE

if [ "$#" = 0 ]; then
    # Generate fresh .wasm from .wat files
    # TODO: disabling .wasm generation for now
    # wat2wasm_dir "./"
    # wat2wasm_dir "./imported_modules/"
    # wat2wasm_dir "../../apps/"

    TESTS=$(ls *.wasm)
else
    TESTS="$@"
fi

RAW=${RAW:=0}

function run_test() {
    local test=$1
    local flags=""
    local args=""

    echo "##+$test"

    if [ -f app/$test.app ]; then
		app=$(cat app/$test.app)
    fi
    if [ -f flags/$test.flags ]; then
		flags=$(cat flags/$test.flags)
    fi
    if [ -f imports/$test.imports ]; then
		# Combine all imports with the '+' delimiter (should have no trailing '+')
		imports="+$(cat imports/$test.imports | grep -v "^$" | tr '\n' '+' | sed 's/+$//')"
    fi

    local P=$T/$test

	echo "$WIZENG $flags --monitors=$test$imports $app"
    if [ -f $test.in ]; then
		$WIZENG_CMD --colors=false $flags --monitors=$test$imports $app < $test.in > $P.out 2> $P.err
    else
		$WIZENG_CMD --colors=false $flags --monitors=$test$imports $app > $P.out 2> $P.err
    fi
    echo $? > $P.exit

	# Reset variables
	unset app flags imports

	# Make sure expected output is available!
	if [[ ! -f expected/$test.out && ! -f expected/$test.err ]]; then
		echo "##-fail: MUST have expected output (.out) OR error (.err) for $test"
		return 1
	fi

    for check in "out" "err" "exit"; do
	if [ -f expected/$test.$check ]; then
	    diff expected/$test.$check $P.$check | tee $P.$check.diff
	    DIFF=${PIPESTATUS[0]}
	    if [ "$DIFF" != 0 ]; then
			if [ -f failures.$target ]; then
				grep $test failures.$target
				if [ $? = 0 ]; then
					continue # test was found in expected failures
				fi
			fi
			if [ -f failures.$target.$TEST_MODE ]; then
				grep $test failures.$target.$TEST_MODE
				if [ $? = 0 ]; then
					continue # test was found in expected failures
				fi
			fi
			if [ -f failures.all ]; then
				grep $test failures.all
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

if [ "$RAW" = 0 ]; then
    run_tests $TESTS | $PROGRESS
else
    run_tests $TESTS
fi
