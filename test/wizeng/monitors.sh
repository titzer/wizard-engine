#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
    DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $DIR/../common.sh wizeng-monitors

make_binary wizeng || exit $?

WIZENG="../../$BINARY $WIZENG_OPTS -nocolor"

target=$TEST_TARGET

print_testing
cd $DIR

if [ $# -gt 0  ]; then
    MONITORS=($@)
else
    MONITORS=("loops" "loops{c}" 
        "coverage" "coverage{c}" "coverage{c=i}" 
        "calls" "calls{c}" 
        "branches" "branches{c}" 
        "hotness" "hotness{c}"
        "globals" 
        "memory")
fi

TESTS=$(ls *.wasm)

RAW=${RAW:=0}

function run_test {
    local flags=""
    local args=""
    echo "##>${#MONITORS[@]}"
    for monitor in ${MONITORS[@]}; do
        local test=$1
        local mflag="--monitors=$monitor"
        if [ -f $test.flags ]; then
            flags=$(cat $test.flags)
        fi
        if [ -f $test.args ]; then
            args=$(cat $test.args)
        fi

        echo "##+$test | $monitor"

        local suffix=$(echo "$monitor" | tr '{}=,' '-')
        local P=$T/$test.$suffix

        if [ -f $test.in  ]; then
            $WIZENG $flags $mflag "$test" $args < $test.in > $P.out
        else
            $WIZENG $flags $mflag "$test" $args > $P.out
        fi  

        if [ -f monitors/$test.$suffix.out  ]; then
            diff monitors/$test.$suffix.out $P.out | tee $P.out.diff
            DIFF=${PIPESTATUS[0]}
            if [ "$DIFF" != 0  ]; then
                if [ -f failures.$target  ]; then
                    grep $test failures.$target
                    if [ $? = 0  ]; then
                        continue # test was found in expected failures
                    fi
                fi
                echo "##-fail: $P.out.diff"
                return 1
            fi
        fi

        echo "##-ok"
    done
}

function run_tests {
    for t in $@; do
        run_test $t
    done
}

if [ "$RAW" = 0 ]; then
    run_tests $TESTS | $PROGRESS
else
    run_tests $TESTS
fi
