#!/bin/bash

function exit_usage() {
    echo "Usage: build.sh <wave|wasi|jawa|spectest|unittest> <x86-linux|x86-64-linux|jvm|wave>"
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
WIZENG="src/wizeng.main.v3"
WAVE="src/wave/*.v3"
WASI="src/wasi/*.v3"
WASI_X86_64_LINUX="src/wasi/x86-64-linux/*.v3"
JAWA="src/jawa/*.v3"

PROGRAM=$1
TARGET=$2

# compute sources
if [ "$PROGRAM" = "wizeng" ]; then
    SOURCES="$ENGINE $WIZENG $WAVE $WASI"
    if [[ "$TARGET" = "x86-64-linux" || "$TARGET" = "x86_64_linux" ]]; then
        SOURCES="$SOURCES $WASI_X86_64_LINUX"
    fi
elif [ "$PROGRAM" = "spectest" ]; then
    SOURCES="$ENGINE $SPECTEST"
elif [ "$PROGRAM" = "unittest" ]; then
    SOURCES="$ENGINE $UNITTEST $JAWA"
elif [ "$PROGRAM" = "objdump" ]; then
    SOURCES="$ENGINE src/objdump.main.v3"
else
    exit_usage
fi

# build
exe=${PROGRAM}.${TARGET}
if [[ "$TARGET" = "x86-linux" || "$TARGET" = "x86_linux" ]]; then
    v3c-x86-linux -heap-size=512m -stack-size=1m $V3C_OPTS -program-name=${PROGRAM}.x86-linux -output=bin/ $SOURCES $TARGET_V3
elif [[ "$TARGET" = "x86-64-linux" || "$TARGET" = "x86_64_linux" ]]; then
    v3c-x86-64-linux -heap-size=700m -stack-size=2m $V3C_OPTS -program-name=${exe} -output=bin/ $SOURCES $TARGET_X86_64
    if [ $PROGRAM = "wizeng" ]; then
	E=bin/${exe}
        cp $E $E.genint
        $E.genint -gen-int=$E > /tmp/wizeng.genint.out 2>&1
	if [ $? != 0 ]; then
	    echo warning: could not serialize interpreter into $E, may be slower
	fi
        rm $E.genint
    fi
elif [ "$TARGET" = "jvm" ]; then
    v3c-jar $V3C_OPTS -program-name=${PROGRAM}.jvm -output=bin/ $SOURCES $TARGET_V3
elif [ "$TARGET" = "wave" ]; then
    v3c-wave -heap-size=128m $V3C_OPTS -program-name=${PROGRAM} -output=bin/ $SOURCES $TARGET_V3
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
    echo "v3c \$V3C_OPTS -run $LIST" '$@' >> bin/$PROGRAM.int
    chmod 755 bin/$PROGRAM.int
    # run v3c just to check for compile errors
    v3c $LIST
else
    exit_usage
fi
