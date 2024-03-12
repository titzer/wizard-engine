#!/bin/bash

SCRIPT_LOC=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

export TEST_TARGET=x86-64-linux
exec $SCRIPT_LOC/all.sh
