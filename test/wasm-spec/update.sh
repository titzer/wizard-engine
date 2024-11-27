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

BRANCHES="$@"
if [ "$#" = 0 ]; then
    BRANCHES=spec
fi



for b in $BRANCHES; do
    printf "Updating proposal ${CYAN}%-22s${NORM} " $b
    update_proposal_repo $b | $PROGRESS || exit $?
    printf "Building tests    ${CYAN}%-22s${NORM} " $b
    make_proposal_tests $b | $PROGRESS || exit $?
done
