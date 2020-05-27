#!/bin/bash

CORE_TESTS=$WIZENG_LOC/core-test

if [ ! -d "$CORE_TESTS" ]; then
    echo "Error: $CORE_TESTS should symlink to spec/test/core"
    exit 1
fi

REF_INTERPRETER=${CORE_TESTS}/../../interpreter/wasm

cd $CORE_TESTS

for f in *.wast; do
    $REF_INTERPRETER $f -o ./bin/$f.bin.wast
done
