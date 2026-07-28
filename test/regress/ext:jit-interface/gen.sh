#!/usr/bin/env bash

# Regenerates the tests in this directory.
#
# Unlike the other extension directories, these tests are not produced by running the
# reference interpreter over a .wast source, because it does not implement this proposal
# yet. See the header comment of gen.main.v3. When the reference interpreter gains support,
# this script should be replaced by a build.sh that regenerates the .bin.wast files from
# the .wast sources.

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

WIZENG_LOC=$(cd $HERE/../../../ && pwd)

V3I=${V3I:=$(which v3i)}
if [ ! -x "$V3I" ]; then
    echo "Virgil interpreter (v3i) not found in \$PATH, and \$V3I not set"
    exit 1
fi

if [ "$VIRGIL_LIB_UTIL" = "" ]; then
    VIRGIL_LOC=${VIRGIL_LOC:=$(cd $(dirname $V3I)/../ && pwd)}
    VIRGIL_LIB_UTIL=$VIRGIL_LOC/lib/util
fi

cd $HERE

# Mirrors the source set that build.sh uses for the v3i target, plus BinBuilder, which is
# reused from the unit tests to encode sections and patch their LEB sizes.
exec $V3I -fun-exprs -simple-bodies \
    $VIRGIL_LIB_UTIL/*.v3 \
    $WIZENG_LOC/src/engine/*.v3 \
    $WIZENG_LOC/src/engine/compression/*.v3 \
    $WIZENG_LOC/src/engine/continuation/UnboxedContinuation.v3 \
    $WIZENG_LOC/src/engine/v3/*.v3 \
    $WIZENG_LOC/src/util/*.v3 \
    $WIZENG_LOC/test/unittest/BinBuilder.v3 \
    ./gen.main.v3 "$@"
