#!/bin/bash

SCRIPT_LOC=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
YELLOW='[0;33m'
NORM='[0;00m'

function skip() {
    printf "Testing ${CYAN}%-10s${NORM} %-13s | " $1 $2
    printf "${YELLOW}skipped (%s)${NORM}\n" "$3"
}

if [ "$TEST_TARGETS" = "" ]; then
    if [ "$TEST_TARGET" = "" ]; then
	TEST_TARGETS="int x86-linux x86-64-linux jvm"
    else
	TEST_TARGETS="$TEST_TARGET"
    fi
fi

# Unit tests
for target in $TEST_TARGETS; do
    if [ "$target" = jvm ]; then # TODO: out of memory
	skip unit $target "initial heap too large on this target"
    else
	TEST_TARGET=$target $SCRIPT_LOC/unit.sh
    fi
done

# Spec tests
for target in $TEST_TARGETS; do
    if [ "$target" = int ]; then # TODO: out of memory depending on host v3c
	skip spec $target "will run out of memory"
    else
	TEST_TARGET=$target $SCRIPT_LOC/spec.sh
    fi
done

# Wizeng tests
for target in $TEST_TARGETS; do
    if [ "$target" = "" ]; then # for symmetry
	skip wizeng $target
    else
	TEST_TARGET=$target $SCRIPT_LOC/wizeng.sh
    fi
done

