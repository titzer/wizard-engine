#!/usr/bin/env bash
# Generate the Whamm opcode monitor using the current Opcodes.v3

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE"  ]; do
    DIR="$( cd -P "$( dirname "$SOURCE"  )" >/dev/null 2>&1 && pwd  )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /*  ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE"  )" >/dev/null 2>&1 && pwd  )"
SRC_DIR="$DIR/../../../../../../src"

# Configure the files to include (will be run with v3i)
if [ "$VIRGIL_LIB" = "" ]; then
    if [ "$VIRGIL_LOC" = "" ]; then
	V3C_LOC=$(dirname $(which v3c))
	VIRGIL_LOC=$(cd $V3C_LOC/../ && pwd)
    fi
    VIRGIL_LIB=${VIRGIL_LOC}/lib/
fi
ENGINE="$SRC_DIR/engine/*.v3 $SRC_DIR/util/*.v3 $VIRGIL_LIB/util/*.v3"
TARGET_V3="$SRC_DIR/engine/v3/*.v3"

if ! v3i $ENGINE $TARGET_V3 $DIR/*.v3 $DIR; then
    exit 1
fi

wat2wasm $DIR/hotness-mon.wat -o $DIR/hotness-mon.wasm
mv $DIR/*.wa* $DIR/../..