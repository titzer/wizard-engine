#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $DIR/../common.sh wizeng-monitors-update

make_binary wizeng || exit $?

cd $DIR
WIZENG="../../$BINARY -colors=false"

if [ $# -gt 0 ]; then
    MONITORS=($@)
else
    MONITORS=("loops" "loops{c}" 
        "coverage" "coverage{c}" "coverage{i}" 
        "calls" "calls{c}" 
        "branches" "branches{c}" 
        "hotness" "hotness{c}"
        "globals" 
        "memstats"
        "profile_bytecode{switch_size=16}")
fi

# generate output files from all .wasm in a folder
function update_tests_from {
    local flags=""
    local args=""
    FOLDER=$1
    PATHS=$(ls $FOLDER/*.wasm)
    echo "##>${#MONITORS[@]}"
    for monitor in ${MONITORS[@]}; do
        local mflag="--monitors=$monitor"
        echo "##>"${#PATHS[@]}
        for wasm_path in $PATHS; do
            local wasm_file=$(basename $wasm_path)
            if [ -f $wasm_file.flags ]; then
                flags=$(cat $wasm_file.flags)
            fi
            if [ -f $wasm_file.args ]; then
                args=$(cat $wasm_file.args)
            fi
            echo "##+$monitor | $wasm_file"
            $WIZENG $flags $mflag "$wasm_path" $args > $T/$wasm_file.tmp
            if [ $? = 0 ]; then
                local suffix=$(echo "$monitor" | tr '{}=,' '-')
                cp -f $T/$wasm_file.tmp expected/$wasm_file.$suffix.out
                echo "##-ok: Updated $monitor output for $wasm_file"
            else
                echo "##-skipped: non-zero exit code"
            fi
        done
    done
}

WIZENG_TESTS=$DIR
SPEC_TESTS=$WIZENG_LOC/test/wasm-spec/bin/spec

update_tests_from $WIZENG_TESTS | $PROGRESS
# TODO: Add spec tests
# update_tests_from $SPEC_TESTS   | $PROGRESS
