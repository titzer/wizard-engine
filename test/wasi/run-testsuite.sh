#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
WIZENG_LOC=${WIZENG_LOC:=$(cd $HERE/.. && pwd)}
# TODO: Update to WebAssembly one once it gets merged
REPO=https://github.com/pco2699/wasi-testsuite
BRANCH=prod/testsuite-base
REPOS=${WIZENG_LOC}/wasi/repos/
DIR=${REPOS}/wasi-testsuite/

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
python3 $DIR/test-runner/wasi_test_runner.py \
    -t $DIR/tests/assemblyscript/testsuite/ \
        $DIR/tests/c/testsuite/ \
        $DIR/tests/rust/testsuite/ \
    -r $DIR/adapters/wizard.py 
