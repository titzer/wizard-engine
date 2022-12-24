#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

WIZENG_LOC=$DIR

cd $WIZENG_LOC

T=/tmp/$USER/wizeng-commit/
mkdir -p $T

DRY_RUN=0
if [ "$1" == "--dry-run" ]; then
    DRY_RUN=1
    shift
fi

function try() {
    if [ "$DRY_RUN" != 0 ]; then
	echo "$@"
    else
	"$@"
    fi
}

git diff master src/ > $T/diff
if [ ! -z "$(cat $T/diff)" ]; then
    try scripts/version-bump.sh
fi

find src -name '*.rej' > $T/rejects
find src -name '*.orig' >> $T/rejects

if [ ! -z "$(cat $T/rejects)" ]; then
    echo Error: should not commit with broken patch files:
    cat $T/rejects
    exit 1
fi


try git commit "$@"
