#!/bin/bash

BRANCHES="$@"
if [ "$#" = 0 ]; then
    BRANCHES=spec
fi

function build {
    b=$1
    echo build $b
    DIR=${WIZENG_LOC}/wasm-spec/$b/interpreter
    if [ ! -d "$DIR" ]; then
	echo directory not found: $DIR
	exit 2
    fi
    cd $DIR
    make
    if [ "$?" != 0 ]; then
	exit $?
    fi
    cd ..
    cd test/core
    mkdir -p bin
    TESTS=$(ls *.wast)
    for t in $TESTS; do
	echo   translate $t
	../../interpreter/wasm $t -o bin/$t.bin.wast
    done
    
    if [ -d simd ]; then
        cd simd
        mkdir -p ../bin/simd
        TESTS=$(ls *.wast)
        for t in $TESTS; do
	    echo   translate $t
	    ../../../interpreter/wasm $t -o ../bin/simd/$t.bin.wast
        done
    fi
}

for b in $BRANCHES; do
    (build $b)
done
