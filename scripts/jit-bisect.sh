#!/bin/bash

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
NORM='[0;00m'

T=/tmp/$USER/jit-bisect/
mkdir -p $T

if [ "$1" = "--skip-int" ]; then
    # skip collecting the ground truth
    shift
else
    # collect the ground truth by running with --mode=int
    wizeng --mode=int "$@" > $T/int.out 2>$T/int.err
    echo $? > $T/int.exit
fi

# collect the JIT results
wizeng --mode=jit "$@" > $T/jit.out 2>$T/jit.err
echo $? > $T/jit.exit

function check() {
    base=$1
    shift
    diff=$1

    for ext in out err exit; do
	diff -q $base.$ext $diff.$ext
	if [ "$?" -ne 0 ]; then
	    echo "$?"
	fi
    done
    echo 0
}

# Check for differences between int and jit mode.
if [ "$(check $T/int $T/jit)" = 0 ]; then
    echo No difference between --mode=int and --mode=jit
    exit 0
else
    echo Detected a difference between --mode=int and --mode=jit
fi

function count_funcs() {
    NUM_FUNCS=1
    WASM_FILE=
    # Count the number of functions, which is needed
    for a in "$@"; do
	if [[ "$a" =~ .*".wasm" ]]; then
	    WASM_FILE=$a
	fi
    done

    wasm-objdump -x -j function $WASM_FILE | grep func > $T/funcs
    sed '-es/func\[\(.*\)\]/ \1 /' $T/funcs | awk '{print $2}' > $T/funcs.clean
    NUM_FUNCS=$(wc -l $T/funcs.clean)
    MIN_FUNC=${MIN_FUNC:=$(sort -n $T/funcs.clean | head -1)}
    MAX_FUNC=${MAX_FUNC:=$(sort -n $T/funcs.clean | tail -1)}
}

count_funcs "$@"


min=$MIN_FUNC
max=$MAX_FUNC

# TODO: --jit-filter is inclusive of the end. Fix.
while (( min < max )); do
    mid=$(( (min + max) / 2 ))

    # Check lower half
    FILTER="--jit-filter=#${min}...${mid}"
    printf "Testing %s " "$FILTER"

    F="$T/jit-#${min}...${mid}"
    wizeng --mode=jit $FILTER "$@" > $F.out 2>$F.err
    echo $? > $F.exit

    if [ "$(check $T/int $F)" = 0 ]; then
	echo ${GREEN}ok${NORM}
        min=$((mid + 1))
    else
	echo ${RED}bad${NORM}
        max=$mid
    fi
done
