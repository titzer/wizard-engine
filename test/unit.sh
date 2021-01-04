#!/bin/bash

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
NORM='[0;00m'

if [ "$WIZENG_LOC" = "" ]; then
    WIZENG_LOC=$(cd $(dirname ${BASH_SOURCE[0]}/..) && pwd)
fi

printf "Testing ${CYAN}unit${NORM} | "

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
    
SRC="$WIZENG_LOC/src/*/*.v3 $VIRGIL_LIB_UTIL/*.v3"
TEST="$WIZENG_LOC/test/*/*.v3"
MAIN="$WIZENG_LOC/test/unittest.main.v3"
LOG=/tmp/wizeng.unit.sh.log

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

# Typecheck and verify wizeng first, printing out compile errors
v3c -fp $SRC $TEST
if [ "$?" != 0 ]; then
    exit 1
fi

# run unittests and pipe through progress program
if [ $PROGRESS_PIPE = 1 ]; then
    v3c -fp $V3C_OPTS -run $SRC $TEST $MAIN "$@" | tee $LOG | progress tti
else
    v3c -fp $V3C_OPTS -run $SRC $TEST $MAIN "$@"
fi
