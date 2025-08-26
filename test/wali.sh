#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/common.sh wali
make_wizeng x86-64-linux


TEST_FILE=$1
if [ -f "$TEST_FILE" ]; then
TEST_FILE=$(realpath $TEST_FILE)
fi

TEST_DIR=$WIZENG_TEST/wali

# NOTE: Change to 1 to test WALI output with IWASM
TEST_WITH_IWASM=0

if [ $TEST_WITH_IWASM -eq 1 ]; then
    WASM=${IWASM:=$(which iwasm)}
    if [ ! -x "$IWASM" ]; then
        if [ ! -f "$(pwd)/WALI/iwasm" ]; then
        # Build WALI if iwasm not available
        git clone https://github.com/arjunr2/WALI.git
        cd WALI
        git submodule update --init wasm-micro-runtime
        make iwasm
        cd ..
        fi
        IWASM=${IWASM:=$(pwd)/WALI/iwasm}
    fi
fi

function run_test() {
    pushd $T >> /dev/null

    # TODO: rely on .wasm files existing; don't compile
    if [ -z $TEST_FILE ]; then
        for file in "$TEST_DIR"/*.v3; do
          if [ -f "$file" ]; then
              $CUR_V3C -heap-size=64k -symbols -target=wasm $file
              if [ $? -ne 0 ]; then
              exit 1
              fi
          fi
        done
    else
      $CUR_V3C -heap-size=64k -symbols -target=wasm $TEST_FILE
      if [ $? -ne 0 ]; then
      exit 1
      fi
    fi

    cp -r -f $TEST_DIR/fixtures/* .
    cp -r -f $TEST_DIR/*.out .

    TEST_FILES="./*.wasm"

    if [ ! -z "$TEST_FILE" ]; then
        base_name=$(basename $TEST_FILE)
        TEST_FILES="${base_name%.v3}.wasm"
    fi
    for wasm_file in $TEST_FILES; do
        echo "##+test:$wasm_file"

        $WIZENG_CMD $wasm_file 2>&1 | tee "$wasm_file.wizeng.out"
        WIZENG_OUT_STATUS=$?
        echo $WIZENG_OUT_STATUS > $wasm_file.exit

        echo "$TEST_DIR/$wasm_file.exit"
        if ! diff $wasm_file.exit $TEST_DIR/$wasm_file.exit; then
            echo "##-fail:wizeng $wasm_file exit with code $WIZENG_OUT_STATUS"
            continue
        fi
        if ! diff "$wasm_file.wizeng.out" "$wasm_file.out" > /dev/null; then
            echo "##-fail:$wasm_file invalid output, does not match $wasm_file.out"
            continue
        fi

        if [ $TEST_WITH_IWASM -eq 1 ]; then
        $IWASM $wasm_file /dev/null 2>&1 | tee -a "$wasm_file.iwasm.out"
        IWASM_OUT_STATUS=$?
        if [ $IWASM_OUT_STATUS -ne 0 ]; then
            echo "##-fail:iwasm $wasm_file exit with code $IWASM_OUT_STATUS"
            continue
        fi
        if ! diff "$wasm_file.wizeng.out" "$wasm_file.iwasm.out" > /dev/null; then
            echo "##-fail:$wasm_file iwasm and wizeng output different"
            continue
        fi
        fi

        echo "##-ok:$wasm_file"
    done
    popd >> /dev/null
}

LOG=$T/wali.sh.log
if [ $PROGRESS_PIPE -eq 1 ]; then
    run_test | tee $LOG | $PROGRESS
else
    run_test | tee $LOG
fi
