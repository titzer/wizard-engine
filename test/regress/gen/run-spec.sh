#!/bin/bash

if [ $# = 0 ]; then
    echo "Usage: run-spec.sh <spec/interpreter/wasm> [files]"
    exit 1
fi

SPEC=$1
shift

if [ $# = 0 ]; then
    for f in *.wast; do
	if [[ $f =~ .*bin\.wast ]]; then
	    continue
	fi
	TESTS="$TESTS $f"
    done
else
    TESTS="$@"
fi

for f in $TESTS; do
    printf "##+exec %s\n" $f
    $SPEC $f 2>&1 > out.log 
    if [ $? != 0 ]; then
	cat out.log
	echo "##-fail: execute error"
	continue
    else
	echo "##-ok"
    fi
    printf "##+translate %s\n" $f
    $SPEC $f -o ${f/%.wast/.bin.wast}
    if [ $? != 0 ]; then
	echo "##-fail: translate error"
    else
	echo "##-ok"
    fi
done
