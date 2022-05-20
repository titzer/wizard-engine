#!/bin/bash

BRANCHES="$@"
if [ "$#" = 0 ]; then
    BRANCHES=spec
fi

function check {
    if [ $1 = 0 ]; then
        echo "##-ok"
    else
        echo "##-fail"
    fi
}

function update {
    b=$1
    DIR=${WIZENG_LOC}/wasm-spec/$b/interpreter
    if [ ! -d "$DIR" ]; then
	echo directory not found: $DIR
	exit 2
    fi
    
    cd $DIR
    echo "##+[$b] git pull"
    git pull
    check $?
    echo "##+[$b] make"
    make
    check $?
}

function build {
    b=$1
    echo build $b
    DIR=${WIZENG_LOC}/wasm-spec/$b
    WASM=${DIR}/interpreter/wasm
    
    cd $DIR/test/core
    mkdir -p bin
    TESTS=$(ls *.wast)
    rm -f bin/*.bin.wast
    
    for sub in . simd gc; do
        if [ -d $sub ]; then
            pushd $sub
            mkdir -p ../bin/$sub
            TESTS=$(ls *.wast)
            rm -f bin/$sub/*.bin.wast
            for t in $TESTS; do
	        echo "##+[$b] translating $sub/$t"
	        $WASM $t -o ../bin/$sub/$t.bin.wast
                check $?
            done
            popd
        fi
    done
    
}

for b in $BRANCHES; do
    (update $b && build $b)
done
