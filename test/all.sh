#!/bin/bash

SCRIPT_LOC=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

$SCRIPT_LOC/unit.sh
$SCRIPT_LOC/wave.sh
$SCRIPT_LOC/spec.sh
$SCRIPT_LOC/spec.sh -ext:bulk-memory-operations bulk-memory-operations
$SCRIPT_LOC/spec.sh -ext:bulk-memory-operations -ext:reference-types reference-types
# TODO $SCRIPT_LOC/spec.sh -ext:bulk-memory-operations -ext:reference-types -ext:function-references function-references
# TODO $SCRIPT_LOC/spec.sh -ext:tail-call tail-call

