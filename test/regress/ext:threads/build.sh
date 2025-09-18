#!/usr/bin/env bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

export WIZENG_LOC=$(cd $HERE/../../../ && pwd)
export SPEC_LOC=${SPEC_LOC:=$(cd $WIZENG_LOC/wasm-spec/repos/threads && pwd)}

if [ ! -d $SPEC_LOC ]; then
    echo "WebAssembly specification repo not found: $SPEC_LOC"
    exit 1
fi

exec $HERE/../build.sh "$@"
