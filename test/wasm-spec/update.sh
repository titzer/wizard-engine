#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
WIZENG_LOC=${WIZENG_LOC:=$(cd $DIR/.. && pwd)}

. $DIR/../common.sh update

PROPOSALS="$@"
if [ "$PROPOSALS" = "" ]; then
    PROPOSALS=spec
fi

for p in $PROPOSALS; do
    printf "Updating proposal ${CYAN}%-22s${NORM} " $p
    update_proposal_repo $p | $PROGRESS || exit $?
    printf "Building tests    ${CYAN}%-22s${NORM} " $p
    make_proposal_tests $p | $PROGRESS || exit $?
done
