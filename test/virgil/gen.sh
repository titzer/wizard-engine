#!/bin/bash

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

CMD="v3c -target=wasm-spec-test -output=bin/ -multiple src/*.v3"

printf "Compiling ${CYAN}virgil${NORM} tests: "

LOG=$T/gen.sh.log
if [ $PROGRESS_PIPE = 1 ]; then
    $CMD | tee $LOG | $PROGRESS
else
    $CMD | tee $LOG
fi
