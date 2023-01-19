#!/bin/bash

SCRIPT_LOC=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
YELLOW='[0;33m'
NORM='[0;00m'

### Utility for printing a testing line
### XXX: duplicated with common.sh
function print_testing() {
    ARG=$1
    printf "Testing ${CYAN}%-10s${NORM} " $harness
    printf "%-13s " $ARG
    if [ "$TEST_MODE" != "" ]; then
	printf "%-13s " "-mode=$TEST_MODE"
    fi
    printf "%-13s | "  $TEST_TARGET
}

function skip() {
    harness=$1
    shift
    print_testing
    printf "${YELLOW}skipped (%s)${NORM}\n" "$1"
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
    export TEST_TARGET=$target
    if [ "$target" = jvm ]; then # TODO: out of memory
	skip unit "initial heap too large on this target"
    else
        $SCRIPT_LOC/unit.sh
    fi
done

# Regression tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    $SCRIPT_LOC/regress.sh
done

# Spec tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = int ]; then # TODO: out of memory depending on host v3c
	skip spec "will run out of memory"
    else
	$SCRIPT_LOC/spec.sh
    fi
done

# Wizeng tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = "" ]; then # for symmetry
	skip wizeng
    else
	$SCRIPT_LOC/wizeng/test.sh
    fi
done
