#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
WIZENG_LOC=${WIZENG_LOC:=$(cd $HERE/.. && pwd)}

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
    REPOS=${WIZENG_LOC}/wasm-spec/repos
    DIR=${REPOS}/$b/interpreter
    if [ ! -d "$DIR" ]; then
	mkdir -p $REPOS
	pushd $REPOS
	echo "##+[$b] git clone"
	git clone --depth 1 https://github.com/WebAssembly/$b
	check $?
	popd
    else
	pushd $DIR
	echo "##+[$b] git pull"
	git pull
	check $?
	popd
    fi
    
    pushd $DIR
    echo "##+[$b] make"
    if [ -x "$(which opam)" ]; then
	# Needed for Ocaml build
	eval $(opam env)
    fi
    make
    RESULT=$?
    check $RESULT
    popd
    return $RESULT
}

function build {
    b=$1
    echo build $b
    REPO=${WIZENG_LOC}/wasm-spec/repos/$b
    WASM=${REPO}/interpreter/wasm
    SRC=$HERE/src/$b
    BIN=$HERE/bin/$b
    mkdir -p $BIN
    mkdir -p $SRC
    rm -f $BIN/*.wast $BIN/*/*.wast
    rm -f $SRC/*.wast $SRC/*/*.wast
    
    cd $REPO/test/core
    TESTS=$(ls *.wast)
    
    for sub in . simd gc; do
        if [ -d $sub ]; then
            pushd $sub
            BIN_SUB=$BIN/$sub
            SRC_SUB=$SRC/$sub
            mkdir -p $BIN_SUB
            mkdir -p $SRC_SUB
            TESTS=$(ls *.wast)
            for t in $TESTS; do
	        echo "##+[$b] translating $sub/$t"
		cp $t $SRC_SUB
	        $WASM $t -o $BIN_SUB/${t/%.wast/}.bin.wast
	        $WASM $t -o $BIN_SUB/${t/%.wast/}.wasm
                check $?
            done
            popd
        fi
    done
    
}

for b in $BRANCHES; do
    (update $b && build $b)
done
