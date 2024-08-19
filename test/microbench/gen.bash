#!/bin/bash

if [ $# -lt 3 ]; then
    echo "This script generates (calibrated) microbenchmarks from a template file."
    echo "Usage: gen.bash <input.wat> <repeat> <inner_ms>"
    exit 1
fi
input=$1
shift
repeat=$1
shift
inner_ms=$1
shift

CALIBRATION=$(grep INNER_CALIBRATION $input | cut -d= -f2)
CALIBRATION=${CALIBRATION:=1}

grep __REPEAT__ $input > /dev/null
if [ $? = 0 ]; then
    ITERATIONS=$(bc <<< "scale=0; $CALIBRATION * $inner_ms / 1")
    if [ "$ITERATIONS" = "0" ]; then
	ITERATIONS=1
    fi
    sed -es/__INNER_ITERATIONS__/$ITERATIONS/g $input | sed -es/__REPEAT__/$repeat/g
else
    # repeat doesn't occur, multiply number of iterations
    ITERATIONS=$(bc <<< "scale=0; $CALIBRATION * $inner_ms * $repeat / 1")
    if [ "$ITERATIONS" = "0" ]; then
	ITERATIONS=1
    fi
    sed -es/__INNER_ITERATIONS__/$ITERATIONS/g $input
fi
