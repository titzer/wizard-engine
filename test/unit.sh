#!/bin/bash

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
NORM='[0;00m'

if [ "$WIZENG_LOC" = "" ]; then
    WIZENG_LOC=$(cd $(dirname ${BASH_SOURCE[0]}/..) && pwd)
fi

# TODO: factor out utility-finding code
CUR_V3C=$(which v3c)

if [ ! -x "$CUR_V3C" ]; then
    echo "Virgil compiler (v3c) not found in PATH"
    exit 1
fi

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


let PROGRESS_PIPE=1
if [[ "$1" =~ "-trace-calls=" ]]; then
    V3C_OPTS="$1 $V3C_OPTS"
    shift
    let PROGRESS_PIPE=0
fi

if [[ "$1" =~ "-fatal-calls=" ]]; then
    V3C_OPTS="$1 $V3C_OPTS"
    shift
    let PROGRESS_PIPE=0
fi

if [[ "$1" =~ "--trace" ]]; then
    # turn off the progress pipe in verbose mode
    let PROGRESS_PIPE=0
fi

if [[ "$1" =~ "-t" ]]; then
    # turn off the progress pipe in verbose mode
    let PROGRESS_PIPE=0
fi

if [[ "$1" = "-fatal" ]]; then
    # turn off the progress pipe in fatal error mode
    let PROGRESS_PIPE=0
fi

if [ "$TEST_TARGET" = "" ]; then
    TEST_TARGET=int
fi

function make_unittest() {
    cd $WIZENG_LOC
    make bin/unittest.${TEST_TARGET} 2>&1 > /tmp/unittest.build.out
    RET=$?
    if [ $RET != 0 ]; then
	cat /tmp/unittest.build.out
	exit $RET
    fi
}

(make_unittest)
    RET=$?
    if [ $RET != 0 ]; then
	exit $RET
    fi

cmd="$WIZENG_LOC/bin/unittest.$TEST_TARGET -expected=$WIZENG_LOC/test/unittest.failures -expected=$WIZENG_LOC/test/unittest.failures.${TEST_TARGET}"

printf "Testing ${CYAN}%-10s${NORM} %-13s | " unit $TEST_TARGET
# run unittests and pipe through progress program
LOG=/tmp/wizeng.unit.sh.log
if [ $PROGRESS_PIPE = 1 ]; then
    $cmd "$@" | tee $LOG | progress tti
else
    $cmd "$@"
fi
