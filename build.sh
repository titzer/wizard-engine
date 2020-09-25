#!/bin/bash

function exit_usage() {
    echo "Usage: build.sh <wave|jawa|spectest|unittest> <x86_linux|jvm|wave>"
    exit 1
}

if [ "$#" -lt 2 ]; then
    exit_usage
fi

ENGINE="src/engine/*.v3 src/util/*.v3"
UNITTEST="test/unittest/*.v3 test/spectest/*.v3 test/unittest.main.v3"
SPECTEST="test/spectest/*.v3 test/spectest.main.v3"
WAVE="src/wave/*.v3 src/wave.main.v3"
JAWA="src/jawa/*.v3 src/jawa.main.v3"

declare -A PROGRAMS=()
PROGRAMS["wave"]="$ENGINE $WAVE"
PROGRAMS["jawa"]="$ENGINE $JAWA"
PROGRAMS["spectest"]="$ENGINE $SPECTEST"
PROGRAMS["unittest"]="$ENGINE $UNITTEST $JAWA"

declare -A BUILD=()
BUILD["x86-linux"]="build_x86_linux"
BUILD["jvm"]="build_jvm"
BUILD["wave"]="build_wave"

function build_x86_linux() {
    v3c-x86-linux -heap-size=512m $V3C_OPTS -fp -program-name=$PROGRAM -output=bin/ $@ && mv bin/$PROGRAM bin/$PROGRAM.x86-linux
}

function build_jvm() {
    v3c-jar $V3C_OPTS -fp -program-name=$PROGRAM -output=bin/ $@ && mv bin/$PROGRAM bin/$PROGRAM.jvm
}

function build_wave() {
    v3c-wave -heap-size=512m $V3C_OPTS -fp -program-name=$PROGRAM -output=bin/ $@ && mv bin/$PROGRAM bin/$PROGRAM.wave
}

PROGRAM=$1
SOURCES=${PROGRAMS["$1"]}
COMMAND=${BUILD["$2"]}

if [ "$SOURCES" = "" ]; then
    exit_usage
fi

if [ "$COMMAND" = "" ]; then
    exit_usage
fi

$COMMAND $SOURCES
