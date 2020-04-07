#!/bin/bash

WIZENG=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

SRC=$(find $WIZENG/src -name '*.v3')
TEST=$(find $WIZENG/test -name '*.v3')
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
v3c $SRC $TEST
if [ "$?" != 0 ]; then
    exit 1
fi

# run unittests and pipe through progress program
if [ $PROGRESS_PIPE = 1 ]; then
    v3c -run $SRC $TEST "$@" | tee $LOG | progress
else
    v3c $V3C_OPTS -run $SRC $TEST "$@"
fi
