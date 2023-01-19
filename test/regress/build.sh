#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

WIZENG_LOC=$(cd $HERE/../../ && pwd)
SPEC_LOC=${SPEC_LOC:=$(cd $WIZENG_LOC/wasm-spec/repos/spec && pwd)}

if [ ! -d $SPEC_LOC ]; then
    echo "WebAssembly specification repo not found: $SPEC_LOC"
    exit 1
fi

SPEC_INT=${SPEC_INT:=$SPEC_LOC/interpreter/wasm}
if [ ! -x $SPEC_INT ]; then
    echo "WebAssembly specification interpreter not found: $SPEC_INT"
    exit 1
fi

if [ $# = 0 ]; then
    TESTS=$(ls *.wast | grep -v .bin.wast)
else
    TESTS=$(ls "$@" | grep -v .bin.wast)
fi


for t in $TESTS; do
    echo "##+run +$t"
    $SPEC_INT $t
    if [ $? = 0 ]; then
        echo "##-ok"
    else
        echo "##-failed"
    fi

    echo "##+translate +$t"
    $SPEC_INT $t -o ${t/%.wast/.bin.wast}
    if [ $? = 0 ]; then
        echo "##-ok"
    else
        echo "##-failed"
    fi
done
