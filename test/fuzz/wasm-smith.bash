#!/bin/bash


SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/../common.sh fuzz

make_binary wizeng || exit $?

SIZE=${SIZE:=100}
COUNT=${COUNT:=100000}

i=0
while [ $i -lt $COUNT ]; do
    file="$T/fuzz-test${i}.wasm"
    echo "##+$file"
    head -c $SIZE /dev/urandom | wasm-tools smith -o $file
    $WIZENG_LOC/$BINARY $file
    i=$(($i + 1))
    echo "##-ok"
done
