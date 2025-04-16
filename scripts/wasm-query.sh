#!/bin/bash

function usage() {
    echo "Usage: wasm-query.sh command <file.wasm>"
    echo "Available commands:"
    for run_command in $(declare -Ff | grep 'run_' | cut -d ' ' -f3 | sort); do
        local command=${run_command/run_/}
        local help=""
        local help_var="help_${command}"
        local help=${!help_var}
        if [ -z "$help" ]; then
            local help="[no description available]"
        fi
	if [ "$help" = "(hide)" ]; then
	    continue
	fi
        printf "  %-16s %s\n" "$command" "$help" | head -n 1
    done
}

help_help="(hide)"
function run_help() {
    usage ""
}

help_imports="Dump the imports of a module"
function run_imports() {
    wasm-objdump -h -j import "$@"
}

# ideas for commands and options
# --csv output all as CSV
# each section
# number of declared/imported functions, globals, tables, and memories
# disassemble function(s)

command=$1
shift
run_command="run_${command}"

command_type=$(type -t ${run_command})
if [ "${command_type}" != "function" ]; then
    usage "wasm-query: unknown command '${command}'"
    exit 255
fi

$run_command "$@"
