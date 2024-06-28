#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  BIN="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$BIN/$SOURCE"
done
BIN="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
PROGRAM=$1
#$2 is now $1 and so on
shift
export targets=$($BIN/sense_host.sh)

if [ "$targets" = "" ]; then
    echo "$PROGRAM: no suitable targets found"
    exit 1
fi

function link_and_exe() {
    EXE=$1
    rm -f $BIN/$PROGRAM
    ln -s $EXE $BIN/$PROGRAM
    $@
    exit $?
}

# search for existing executables
function search_and_exe() {
    for t in $targets; do
	EXE=$BIN/${PROGRAM}.$t
	if [ -x "$EXE" ]; then
	    link_and_exe $EXE $@
	fi
    done
}

function do_make() {
    for t in $targets; do
	MAKE_PROGRAMS="bin/$PROGRAM.$t $MAKE_PROGRAMS"
    done
    cd $BIN/..
    make -j $MAKE_PROGRAMS 2>&1 > /tmp/$PROGRAM.$USER.build.out
    RET=$?
    if [ $RET != 0 ]; then
	cat /tmp/$PROGRAM.$USER.build.out
	exit $RET
    fi
}

# search for any suitable executable and run it
search_and_exe $@

# not found, try building all targets
(do_make)

#not found again, search in bin instead - go to parent of current folder (likely scripts) and go to bin instead
BIN=$(dirname "$BIN")
BIN=($BIN/bin)


# try searching again after building
search_and_exe $@

echo "$PROGRAM: no executables found for targets \"$targets\""
exit 1
