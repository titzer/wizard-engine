#!/bin/bash

SCRIPT_LOC=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
YELLOW='[0;33m'
NORM='[0;00m'

DEFAULT_MODES=1
if [ "$TEST_MODE" != "" ]; then
   DEFAULT_MODES=0
fi

# Progress arguments. By default the inline (i) mode is used, while the CI sets
# it to character (c) mode
PROGRESS_ARGS=${PROGRESS_ARGS:="tti"}
PROGRESS="progress $PROGRESS_ARGS"

### Utility for printing a testing line
### XXX: duplicated with common.sh
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

function skip() {
    harness=$1
    shift
    print_testing
    printf "${YELLOW}skipped (%s)${NORM}\n" "$1"
}

function exit_if_failure() {
    if [[ $1 != 0 ]]; then
        exit $1
    fi
}

if [ "$TEST_TARGETS" = "" ]; then
    if [ "$TEST_TARGET" = "" ]; then
	TEST_TARGETS="v3i x86-linux x86-64-linux jvm"
    else
	TEST_TARGETS="$TEST_TARGET"
    fi
fi

function do_script() {
    script=$1
    $SCRIPT_LOC/${script}.sh || exit_if_failure $?
    if [[ "$TEST_TARGET" = "x86-64-linux" && $DEFAULT_MODES = 1 ]]; then
        TEST_MODE=jit $SCRIPT_LOC/${script}.sh || exit_if_failure $?
        TEST_MODE=lazy $SCRIPT_LOC/${script}.sh || exit_if_failure $?
        TEST_MODE=dyn $SCRIPT_LOC/${script}.sh || exit_if_failure $?
    fi
}

# Unit tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    $SCRIPT_LOC/unit.sh || exit_if_failure $?
done

# Regression tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    do_script regress
done

# Spec tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = v3i ]; then # TODO: out of memory depending on host v3c
	skip spec "will run out of memory"
        continue
    fi
    do_script spec
done

# Wizeng tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = "" ]; then # for symmetry
	skip wizeng
        continue
    fi
    do_script wizeng/test
done

# Wizeng monitors tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = "" ]; then # for symmetry
	skip monitors
        continue
    fi
    do_script monitors/test
    do_script monitors/wasm-r3-tests/test
done

# Whamm monitors tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = "" ]; then # for symmetry
	skip whamm
        continue
    fi
    do_script monitors/whamm/monitors/correctness/test
done

# Self-hosted (unit) tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = v3i ]; then # TODO: out of memory depending on host v3c
	skip selfhost "will run out of memory"
        continue
    fi
    do_script selfhost
done

# Virgil tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = v3i ]; then # TODO: runs really, really slow on v3i
	skip virgil "runs too slowly"
        continue
    fi
    do_script virgil/test
done

# Wasi tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    do_script wasi/test
done

# linker tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    do_script linker/test
done

exit 0
