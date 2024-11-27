#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$HERE/$SOURCE"
done
HERE="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

if [ "$#" -lt 1 ]; then
    echo "Usage: proposal.sh <proposal>"
    exit 1
fi

PROPOSAL=$1
shift

. $HERE/common.sh proposal:$PROPOSAL

make_binary spectest || exit $?

CMD="$BINARY $WIZENG_OPTS -expected=$WIZENG_LOC/test/proposal:$PROPOSAL.failures -expected=$WIZENG_LOC/test/proposal:$PROPOSAL.failures.${TEST_TARGET}"

if [ ! -d $WIZENG_LOC/wasm-spec/repos/$PROPOSAL ]; then
    $WIZENG_LOC/test/wasm-spec/update.sh $PROPOSAL || exit $?
fi


cd $WIZENG_LOC
DIR=test/wasm-spec/bin/$PROPOSAL
TESTS=$(find $DIR -name '*.bin.wast')

if [ "$BATCHING" = "" ]; then
    if [ "$TEST_TARGET" = jvm ]; then
        BATCHING=20
    else
        BATCHING=1
    fi
fi

printf "Updating proposal ${CYAN}%-22s${NORM} " $PROPOSAL
update_proposal_repo $PROPOSAL | $PROGRESS || exit $?
printf "Building tests    ${CYAN}%-22s${NORM} " $PROPOSAL
make_proposal_tests $PROPOSAL | $PROGRESS || exit $?
printf "Running tests     ${CYAN}%-22s${NORM} " $PROPOSAL
    
run_batched $BATCHING "$CMD -ext:$PROPOSAL" $TESTS | $PROGRESS

exit $?
