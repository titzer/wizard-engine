#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/../../common.bash regress-gen


v3i $VIRGIL_LIB_UTIL/*.v3 $WIZENG_LOC/src/engine/*.v3 $WIZENG_LOC/src/util/*.v3 $WIZENG_LOC/src/engine/v3/*.v3 ./gen.main.v3 "$@" || exit $?

TESTS=
if [ $# != 0 ]; then
    for f in $@; do
	FILES=$(ls ${f}*.wast | grep -v .bin)
	for g in $FILES; do
	    echo ==== $g ================================
	    cat -n $g
	    echo ----------------------------------------
	done
	TESTS="$TESTS $FILES"
    done
fi

./run-spec.sh $WIZENG_LOC/wasm-spec/repos/spec/interpreter/wasm $TESTS
