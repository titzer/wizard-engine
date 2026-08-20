#!/usr/bin/env bash

# Regenerates the .bin.wast files in this directory from the binary-encoding unit tests.
# Each unit test that decodes binary modules produces one file here, containing every
# distinct module it decoded and the result it expected. See test/unittest/BinRecorder.v3.

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/../../common.sh binary-record

make_binary unittest || exit $?

cd $WIZENG_LOC

rm -f $HERE/*.bin.wast

# The recorder only knows about the binary parser tests; other tests are irrelevant here.
exec $BINARY --record-binary=$HERE "$@" 'bin:*'
