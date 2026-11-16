#!/usr/bin/env bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/../common.sh virgil-gen

TEST_DIRS="core cast variants enums fsi32 fsi64 float range large"

cd $HERE
rm -f src/*.v3
for D in $TEST_DIRS; do
    cp $VIRGIL_LOC/test/$D/*.v3 src/
done

# Compile the tests for Wasm (into bin/) and for Wasm GC (into bin-gc/).
function compile() {
    local name=$1 target=$2 dir=$3
    CMD="v3c -target=$target -output=$dir/ -multiple src/*.v3"

    printf "Compiling ${CYAN}%-10s${NORM} tests: " $name

    LOG=$T/gen.sh.$name.log
    if [ $PROGRESS_PIPE = 1 ]; then
        $CMD | tee $LOG | $PROGRESS
    else
        $CMD | tee $LOG
    fi
}

compile virgil wasm-test bin
compile virgil-gc wasm-gc-test bin-gc
