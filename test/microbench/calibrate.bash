#!/bin/bash

if [ $# -lt 2 ]; then
    echo "This script calibrates the inner loop of a benchmark on the given engine."
    echo "Usage: gen.bash <input.wat> <engine>"
    exit 1
fi
input=$1
shift

CALIBRATION=$(grep INNER_CALIBRATION $input | cut -d= -f2)

echo "Current calibration = $CALIBRATION"

for i in 1 10 100 1000; do

    printf "inner_ms=%-8d " $i

    ./gen.bash $input 1 $i > /tmp/test.wat
    wat2wasm /tmp/test.wat -o /tmp/test.wasm

    btime -i 10 $* /tmp/test.wasm
done
