#!/bin/bash

#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: build.bash <milliseconds> <engine> (test.wat)*"
    echo
    echo "This script generates microbenchmarks with a given execution time by"
    echo "adjusting iteration and repeat count via calibration on an example engine."
    exit 1
fi
ms=$1
shift
engine=$1
shift
dir="${ms}ms"

if [ ! -d $dir ]; then
    echo "Error: directory $dir does not exist."
    exit 2
fi

if [ "$#" -lt 1 ]; then
    TESTS="$(find . -name '*.wat')"
else
    TESTS="$@"
fi

WAT2WASM=${WAT2WASM:="$(which wat2wasm) --enable-all"}

echo "WAT2WASM=\"$WAT2WASM\""

for t in $TESTS; do
    printf "##+%s\n" $t

    if [[ $t =~ ext\:(.*)/.* ]]; then
	echo Matched extension "${BASH_REMATCH[1]}"
    fi
    
    CALIBRATION=$(grep INNER_CALIBRATION $t | cut -d= -f2)
    echo "CALIBRATION=$CALIBRATION"

    ./gen.bash $t 1 $ms > /tmp/test.wat
    $WAT2WASM /tmp/test.wat -o /tmp/test.wasm 2> /tmp/test.err
    if [ $? != 0 ]; then
	echo "##-fail: translation to .wasm failed"
	continue
    fi

    btime -i 10 $engine /tmp/test.wasm
    if [ $? != 0 ]; then
	echo "##-fail: running .wasm failed"
	continue
    fi
    echo "##-ok"
done
