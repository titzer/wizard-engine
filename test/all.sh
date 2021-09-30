#!/bin/bash

SCRIPT_LOC=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
YELLOW='[0;33m'
NORM='[0;00m'

function skip() {
    printf "Testing ${CYAN}%-10s${NORM} %-13s | " $1 $2
    printf "${YELLOW}skipped${NORM}\n"
}

TEST_TARGET=int $SCRIPT_LOC/unit.sh
TEST_TARGET=x86-linux $SCRIPT_LOC/unit.sh
TEST_TARGET=x86-64-linux $SCRIPT_LOC/unit.sh
skip unit jvm # TODO: v3 heap too large

skip spec int # TODO: out of memory
TEST_TARGET=x86-linux $SCRIPT_LOC/spec.sh
TEST_TARGET=x86-64-linux $SCRIPT_LOC/spec.sh
TEST_TARGET=jvm $SCRIPT_LOC/spec.sh

TEST_TARGET=int $SCRIPT_LOC/wizeng.sh
TEST_TARGET=x86-linux $SCRIPT_LOC/wizeng.sh
TEST_TARGET=x86-64-linux $SCRIPT_LOC/wizeng.sh
TEST_TARGET=jvm $SCRIPT_LOC/wizeng.sh
