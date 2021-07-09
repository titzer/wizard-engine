#!/bin/bash

function exit_usage() {
    echo "Usage: build.sh <wave|jawa|spectest|unittest> <x86-linux|x86-64-linux|jvm|wave>"
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

# compute sources
PROGRAM=$1
if [ "$PROGRAM" = "wave" ]; then
    SOURCES="$ENGINE $WAVE"
elif [ "$PROGRAM" = "jawa" ]; then
    SOURCES="$ENGINE $JAWA"
elif [ "$PROGRAM" = "spectest" ]; then
    SOURCES="$ENGINE $SPECTEST"
elif [ "$PROGRAM" = "unittest" ]; then
    SOURCES="$ENGINE $UNITTEST $JAWA"
elif [ "$PROGRAM" = "objdump" ]; then
    SOURCES="$ENGINE src/objdump.main.v3"
elif [ "$PROGRAM" = "benchmark" ]; then
    SOURCES="$ENGINE src/benchmark.main.v3"
else
    exit_usage
fi

# build
TARGET="$2"
if [[ "$TARGET" = "x86-linux" || "$TARGET" = "x86_linux" ]]; then
    v3c-x86-linux -heap-size=512m $V3C_OPTS -program-name=$PROGRAM -output=bin/ $SOURCES $TARGET_V3 && mv bin/$PROGRAM bin/$PROGRAM.x86-linux
elif [[ "$TARGET" = "x86-64-linux" || "$TARGET" = "x86_64_linux" ]]; then
    v3c-x86-64-linux -heap-size=700m $V3C_OPTS -program-name=$PROGRAM -output=bin/ $SOURCES $TARGET_X86_64 && mv bin/$PROGRAM bin/$PROGRAM.x86-64-linux
elif [ "$TARGET" = "jvm" ]; then
    v3c-jar $V3C_OPTS -program-name=$PROGRAM -output=bin/ $SOURCES $TARGET_V3 && mv bin/$PROGRAM bin/$PROGRAM.jvm
elif [ "$TARGET" = "wave" ]; then
    v3c-wave -heap-size=512m $V3C_OPTS -program-name=$PROGRAM -output=bin/ $SOURCES $TARGET_V3 && mv bin/$PROGRAM bin/$PROGRAM.wave
elif [ "$TARGET" = "int" ]; then
    v3c $SOURCES $TARGET_V3
    RET=$?
    if [ $RET != 0 ]; then
	exit $RET
    fi
    DIR=$(pwd)
    LIST=""
    for f in $SOURCES $TARGET_V3; do
	if [[ "$f" != /* ]]; then
	    f="$DIR/$f"
	fi
	LIST="$LIST $(ls $f)"
    done
    echo '#!/bin/bash' > bin/$PROGRAM.int
    echo "v3c -run $LIST" '$@' >> bin/$PROGRAM.int
    chmod 755 bin/$PROGRAM.int
else
    exit_usage
fi
