#!/bin/bash

SCRIPT_LOC=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

TEST_TARGET=x86-linux $SCRIPT_LOC/spec.sh
TEST_TARGET=x86-64-linux $SCRIPT_LOC/spec.sh

TEST_TARGET=int $SCRIPT_LOC/wizeng.sh
TEST_TARGET=x86-linux $SCRIPT_LOC/wizeng.sh
TEST_TARGET=x86-64-linux $SCRIPT_LOC/wizeng.sh

TEST_TARGET=int $SCRIPT_LOC/unit.sh
TEST_TARGET=x86-linux $SCRIPT_LOC/unit.sh
TEST_TARGET=x86-64-linux $SCRIPT_LOC/unit.sh

#TEST_TARGET=x86-linux $SCRIPT_LOC/spec.sh
