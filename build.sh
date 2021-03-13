#!/bin/bash

function exit_usage() {
    echo "Usage: build.sh <wave|jawa|spectest|unittest> <x86_linux|jvm|wave>"
    exit 1
}

if [ "$#" -lt 2 ]; then
    exit_usage
fi

CUR_V3C=$(which v3c)

if [ ! -x "$CUR_V3C" ]; then
    echo "Virgil compiler (v3c) not found in PATH"
    exit 1
fi

if [ "$VIRGIL_LIB" = "" ]; then
    if [ "$VIRGIL_LOC" = "" ]; then
	VIRGIL_LIB=$(dirname $CUR_V3C)/../lib/
    else
	VIRGIL_LIB=${VIRGIL_LOC}/lib/
    fi
fi

if [ ! -e "$VIRGIL_LIB/util/Vector.v3" ]; then
    echo "Virgil library code not found (searched $VIRGIL_LIB)."
    echo "Please set either: "
    echo "  VIRGIL_LOC, to the root of your Virgil installation"
    echo "  VIRGIL_LIB, to point directly to root of the library"
    exit 1
fi
    
ENGINE="src/engine/*.v3 src/util/*.v3 $VIRGIL_LIB/util/*.v3"
TARGET_V3="src/engine/v3/*.v3"
TARGET_X86_64="src/engine/x86-64/*.v3 $VIRGIL_LIB/asm/x86-64/*.v3"
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
BUILD["x86-64-linux"]="build_x86_64_linux"
BUILD["jvm"]="build_jvm"
BUILD["wave"]="build_wave"

function build_x86_linux() {
    v3c-x86-linux -heap-size=512m $V3C_OPTS -program-name=$PROGRAM -output=bin/ $@ $TARGET_V3 && mv bin/$PROGRAM bin/$PROGRAM.x86-linux
}

function build_x86_64_linux() {
    v3c-x86-64-linux -heap-size=700m $V3C_OPTS -program-name=$PROGRAM -output=bin/ $@ $TARGET_X86_64 && mv bin/$PROGRAM bin/$PROGRAM.x86-64-linux
}

function build_jvm() {
    v3c-jar $V3C_OPTS -program-name=$PROGRAM -output=bin/ $@ $TARGET_V3 && mv bin/$PROGRAM bin/$PROGRAM.jvm
}

function build_wave() {
    v3c-wave -heap-size=512m $V3C_OPTS -program-name=$PROGRAM -output=bin/ $@ $TARGET_V3 && mv bin/$PROGRAM bin/$PROGRAM.wave
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
