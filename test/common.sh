#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

export WIZENG_LOC=${WIZENG_LOC:=$(cd $HERE/.. && pwd)}

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
NORM='[0;00m'

harness=$1
shift

### Check for a Virgil compiler and utility code
CUR_V3C=$(which v3c)

if [ ! -x "$CUR_V3C" ]; then
    echo "Virgil compiler (v3c) not found in PATH"
    exit 1
fi

# Progress arguments. By default the inline (i) mode is used, while the CI sets
# it to character (c) mode
PROGRESS_ARGS=${PROGRESS_ARGS:="tti"}
PROGRESS="progress $PROGRESS_ARGS"

if [ "$VIRGIL_LIB_UTIL" = "" ]; then
    if [ "$VIRGIL_LOC" = "" ]; then
	VIRGIL_LIB_UTIL=$(dirname $CUR_V3C)/../lib/util/
    else
	VIRGIL_LIB_UTIL=${VIRGIL_LOC}/lib/util
    fi
fi

if [ ! -e "$VIRGIL_LIB_UTIL/Vector.v3" ]; then
    echo "Virgil utility code not found (searched $VIRGIL_LIB_UTIL)."
    echo "Please set either: "
    echo "  VIRGIL_LOC, to the root of your Virgil installation"
    echo "  VIRGIL_LIB_UTIL, to point directly to these utilities"
    exit 1
fi

### Set up the test target
TEST_TARGET=${TEST_TARGET:=v3i}
T=/tmp/$USER/wizeng-test/$harness/$TEST_TARGET/$TEST_MODE/
mkdir -p $T

### Configure fatal and trace options
PROGRESS_PIPE=1
if [ "$(which progress)" = "" ]; then
    PROGRESS_PIPE=0
fi

while [[ "$1" =~ ^\-.* ]]; do
    if [[ "$1" =~ "\--trace" ]]; then
	# turn off the progress pipe in verbose mode
	let PROGRESS_PIPE=0
    fi
    if [[ "$1" =~ "\-t" ]]; then
	# turn off the progress pipe in verbose mode
	let PROGRESS_PIPE=0
    fi
    WIZENG_OPTS="$WIZENG_OPTS $1"
    shift
done

if [ "$TEST_MODE" != "" ]; then
    WIZENG_OPTS="$WIZENG_OPTS -mode=$TEST_MODE"
fi

if [[ "$1" =~ "-fatal-calls=" ]]; then
    export V3C_OPTS="$1 $V3C_OPTS"
    shift
    let PROGRESS_PIPE=0
fi

if [[ "$1" = "-fatal" ]]; then
    # turn off the progress pipe in fatal error mode
    let PROGRESS_PIPE=0
fi

### Utilities for generating .wasm from .wat

function wat2wasm_avail() {
    command -v wat2wasm >/dev/null 2>&1
}

WAT2WASM=${WAT2WASM:="$(which wat2wasm) --enable-all"}
function wat2wasm() {
    # if wat2wasm doesn't exist, skip this utility func
    ! wat2wasm_avail && return 0

    WAT=$1
    WAT_NAME_EXT=$(basename "$WAT")
    WAT_NAME="${WAT_NAME_EXT%.*}"
    WAT_DIR=$(dirname "$WAT")

    $WAT2WASM "$WAT" -o "$WAT_DIR/$WAT_NAME.wasm"
}

function wat2wasm_dir() {
    # if wat2wasm doesn't exist, skip this utility func
    ! wat2wasm_avail && return 0

    DIR=$1
    WAT_FILES=$(ls $DIR/*.wat)
    for wat in $WAT_FILES; do
	    wat2wasm $wat
    done
}

### Utility for making a specific binary
function make_binary() {
    cd $WIZENG_LOC
    local binary=$1
    local target=$2
    if [ "$target" = "" ]; then
	target=$TEST_TARGET
    fi
    local out=$T/$binary.build.out
    export BINARY=bin/$binary.$target
    make $BINARY 2>&1 > $out
    local ret=$?
    if [ $ret != 0 ]; then
	cat $out
	exit $ret
    fi
}

### Utility for printing a testing line
function print_testing() {
    ARG=$1
    printf "Testing ${CYAN}%-10s${NORM} " $harness
#TODO    printf "%-13s " $ARG
    printf "%-13s "  $TEST_TARGET
    if [ "$TEST_MODE" != "" ]; then
	mode="-mode=$TEST_MODE"
    else
        mode=""
    fi
    printf "%-13s " $mode
    printf "| "
}

function run_batched() {
    local batching=$1
    if [ "$batching" = "" ]; then
        batching=1
    fi
    shift
    local cmd=$1
    shift


    local i=1
    while [ $i -le $# ]; do
	local args=${@:$i:$batching}
        $cmd $args
	i=$(($i + $batching))
    done
}
