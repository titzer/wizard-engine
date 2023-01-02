#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

WIZENG_LOC=$(cd $HERE/../../../ && pwd)

V3C=${V3C:=$(which v3c)}
if [ ! -x "$V3C" ]; then
    echo "Virgil compiler (v3c) not found in \$PATH, and \$V3C not set"
    exit 1
fi

if [ "$VIRGIL_LIB" = "" ]; then
    if [ "$VIRGIL_LOC" = "" ]; then
	V3C_LOC=$(dirname $(which v3c))
	VIRGIL_LOC=$(cd $V3C_LOC/../ && pwd)
    fi
    VIRGIL_LIB=${VIRGIL_LOC}/lib/
fi

v3i $VIRGIL_LIB/util/*.v3 $WIZENG_LOC/src/engine/*.v3 $WIZENG_LOC/src/util/*.v3 $WIZENG_LOC/src/engine/v3/*.v3 ./gen.main.v3 "$@" || exit $?

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
