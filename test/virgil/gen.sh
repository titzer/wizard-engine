#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $DIR/../common.sh virgil-gen

if [ "$VIRGIL_LOC" = "" ]; then
    V3C_LOC=$(dirname $(which v3c))
    VIRGIL_LOC=$(cd $V3C_LOC/../ && pwd)
fi

if [ "$VIRGIL_LOC" = "" ]; then
    error: Could not determine Virgil installation location.
    exit 1
fi

TEST_DIRS="core cast variants enums fsi32 fsi64 float range large"

cd $DIR
rm src/*.v3
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
