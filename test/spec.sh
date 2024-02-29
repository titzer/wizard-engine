#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/common.sh spec

TEST_SIMD=${TEST_SIMD:=1}

function run {
    BRANCH=$1
    cd $WIZENG_LOC
    DIR=test/wasm-spec/bin/$BRANCH
    TESTS=$(ls $DIR/*.bin.wast)

    # add optional subdirectories
    for sub in simd gc; do
        SUB=$(echo $sub | tr [a-z] [A-Z])
        varname="TEST_$SUB"
        if [[ -d $DIR/$sub && "${!varname}" != "" ]]; then
            TESTS="$TESTS $(ls $DIR/$sub/*.bin.wast)"
        fi
    done

    local batching=${BATCHING:=1}
    if [ "$TEST_TARGET" = jvm ]; then
        batching=20
    fi

    if [[ "$BRANCH" != "spec" && "$BRANCH" != "" ]]; then
	EXT_OPTS="-ext:$BRANCH"
    fi
    
    run_batched $batching "$WIZENG_LOC/bin/spectest.$TEST_TARGET $WIZENG_OPTS $EXT_OPTS" $TESTS
}

BRANCHES="$*"
if [ "$BRANCHES" = "" ]; then
    BRANCHES=spec
fi

make_binary spectest || exit $?

for b in $BRANCHES; do
    DIR=$WIZENG_LOC/test/wasm-spec/bin/$b
    if [ ! -d "$DIR" ]; then
	echo Spec branch \"$DIR\" does not exist.
	exit 1
    fi
    print_testing $b
    if [ $PROGRESS_PIPE = 1 ]; then
	run $b | tee $T/spec.$b.out | $PROGRESS
    else
	run $b | tee $T/spec.$b.out
    fi
done
