#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
WIZENG_LOC=${WIZENG_LOC:=$(cd $HERE/.. && pwd)}

# TODO: Update to WebAssembly owned repository once it gets merged
REPO=https://github.com/pco2699/wasi-testsuite
BRANCH=prod/testsuite-base
REPOS=${WIZENG_LOC}/wasi/repos/
REPO=${REPOS}/wasi-testsuite/

function check {
    if [ $1 = 0 ]; then
        echo "##-ok"
    else
        echo "##-fail"
    fi
}

function update {
    if [ ! -d "$REPOS" ]; then
        mkdir -p $REPOS
        echo "##+[$REPO] git clone"
        pushd $REPOS
        git clone -b $BRANCH $REPO
        popd
    else
        echo "##+[$REPO] git pull"
        pushd $REPOS
        git pull
        popd
    fi
    
    RESULT=$?
    check $RESULT
    return $RESULT
}

update
python3 $REPO/test-runner/wasi_test_runner.py \
    -t $REPO/tests/assemblyscript/testsuite/ \
        $REPO/tests/c/testsuite/ \
        $REPO/tests/rust/testsuite/ \
    -r $REPO/adapters/wizard.py 
