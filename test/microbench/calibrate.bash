#!/bin/bash

if [ $# -lt 2 ]; then
    echo "This script calibrates the inner loop of a benchmark on the given engine."
    echo "Usage: gen.bash <input.wat> <engine>"
    exit 1
fi
input=$1
shift

WAT2WASM=${WAT2WASM:=$(which wat2wasm)}

CALIBRATION=$(grep INNER_CALIBRATION $input | cut -d= -f2)

echo "WAT2WASM=\"$WAT2WASM\""
echo "Current calibration = $CALIBRATION"

for i in 1 10 100 1000; do

    printf "inner_ms=%-8d " $i

    ./gen.bash $input 1 $i > /tmp/test.wat
    $WAT2WASM /tmp/test.wat -o /tmp/test.wasm
    if [ $? != 0 ]; then
	echo Translation to .wasm failed.
	exit 1
    fi

    btime -i 10 $* /tmp/test.wasm
done
