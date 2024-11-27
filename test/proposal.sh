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

CMD="$BINARY $WIZENG_OPTS -expected=$WIZENG_TEST/proposal:$PROPOSAL.failures -expected=$WIZENG_TEST/proposal:$PROPOSAL.failures.${TEST_TARGET}"

printf "Updating proposal ${CYAN}%-22s${NORM} " $PROPOSAL
update_proposal_repo $PROPOSAL | $PROGRESS || exit $?

printf "Building tests    ${CYAN}%-22s${NORM} " $PROPOSAL
make_proposal_tests $PROPOSAL | $PROGRESS || exit $?

cd $WIZENG_LOC
TESTS=$(find test/wasm-spec/bin/$PROPOSAL -name '*.bin.wast')

printf "Running tests     ${CYAN}%-22s${NORM} " $PROPOSAL
run_batched $BATCHING "$CMD -ext:$PROPOSAL" $TESTS | $PROGRESS

exit $?
