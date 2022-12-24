#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

WIZENG_LOC=$(cd $DIR/.. && pwd)
VERSION_V3=src/engine/Version.v3
VFILE=$WIZENG_LOC/$VERSION_V3


cd $WIZENG_LOC

function get_wizeng_version() {
    echo $(grep version ${VFILE} | cut -d\" -f2)
}

function update_wizeng_version() {
    local v=$(grep version ${VFILE} | cut -d\" -f2)
    local build=$(echo $v | cut -d. -f2)
    local nbuild=$(printf "%04d" $(expr 1 + $build))
    sed -e "s/$build/$nbuild/g" ${VFILE} > /tmp/Version.v3
    cp /tmp/Version.v3 ${VFILE}
    echo $(get_wizeng_version)
}

function update_version() {
    T=/tmp/$USER/wizeng-bump
    mkdir -p $T
    git diff master ${VERSION_V3} > $T/diff
    if [ ! -z "$(cat $T/diff)" ]; then
	echo ${VERSION_V3} already updated
	local version=$(get_wizeng_version)
    else
	local version=$(update_wizeng_version)
    fi
    echo "Wizeng is now version: $version"
}

BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [[ "$BRANCH" = "master" || "$BRANCH" = "main" || "$BRANCH" = "test_version" ]]; then
    update_version
fi

