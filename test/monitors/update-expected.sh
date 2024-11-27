#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $HERE/../common.sh wizeng-monitors-update

make_wizeng || exit $?

cd $HERE
CMD="$WIZENG_LOC/$BINARY -colors=false"

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
            $CMD $flags $mflag "$wasm_path" $args > $T/$wasm_file.tmp
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

update_tests_from $HERE | $PROGRESS
# TODO: Add spec tests
# update_tests_from $WIZENG_LOC/test/wasm-spec/bin/spec   | $PROGRESS
