#!/bin/bash

WIZENG=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

SRC=$(find $WIZENG/src -name '*.v3')
TEST=$(find $WIZENG/test -name '*.v3')

# Typecheck and verify wizeng first, printing out compile errors
v3c $SRC $TEST
if [ "$?" != 0 ]; then
    exit 1
fi

# run unittests and pipe through progress program
v3c -run $SRC $TEST "$@" | progress
