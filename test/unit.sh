#!/bin/bash

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
NORM='[0;00m'

if [ "$WIZENG_LOC" = "" ]; then
    WIZENG_LOC=$(cd $(dirname ${BASH_SOURCE[0]}/..) && pwd)
fi

echo Testing ${CYAN}unit${NORM}

SRC=$(find $WIZENG_LOC/src -name '*.v3')
TEST=$(find $WIZENG_LOC/test -name '*.v3')
LOG=/tmp/wizeng.unit.sh.log

let PROGRESS_PIPE=1
V3C_OPTS=
if [[ "$1" =~ "-trace-calls=" ]]; then
    V3C_OPTS="$1"
    shift
    let PROGRESS_PIPE=0
fi

if [[ "$1" =~ "-trace" ]]; then
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
    v3c -fp -run $SRC $TEST "$@" | tee $LOG | progress tt
else
    v3c -fp $V3C_OPTS -run $SRC $TEST "$@"
fi
