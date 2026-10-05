#!/usr/bin/env bash

BIN=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
V3C_LINK=$BIN/v3c

PLATFORM=$(uname -sm)

HOSTS=""

# Rosetta 2 allows arm64 Darwin machines to run x86-64 Darwin binaries.
# Set USE_ROSETTA2=1 to assume it is available, USE_ROSETTA2=0 to ignore it;
# otherwise sense it by looking for the runtime that its installer puts down.
ROSETTA2_RUNTIME=/Library/Apple/usr/libexec/oah/libRosettaRuntime

function has_rosetta2() {
    if [ -n "$USE_ROSETTA2" ]; then
	[ "$USE_ROSETTA2" = 1 ]
	return
    fi
    [ -f "$ROSETTA2_RUNTIME" ]
}

if [[ "$PLATFORM" = "Darwin i386" ]]; then
    H="x86-darwin"
    HOSTS="$H $HOSTS"
fi

if [[ "$PLATFORM" = "Darwin x86_64" ]]; then
    H="x86-64-darwin"
    HOSTS="$H $HOSTS"
fi

if [[ "$PLATFORM" = "Darwin arm64" ]]; then
    H="arm64-darwin"
#TODO: unsupported target    HOSTS="$H $HOSTS"
    if has_rosetta2; then
	H="x86-64-darwin"
	HOSTS="$H $HOSTS"
    fi
fi

if [[ "$PLATFORM" = "Linux i386" || "$PLATFORM" = "Linux i686" ]]; then
    H="x86-linux"
    HOSTS="$H $HOSTS"
fi

if [[ "$PLATFORM" = "Linux x86_64" ]]; then
    H="x86-64-linux x86-linux"
    HOSTS="$H $HOSTS"
fi

JAVA=$(which java)

if [ ! -z "$JAVA" ]; then
    H="jvm"
    HOSTS="$HOSTS $H"
fi

if [ -n "$HOSTS" ]; then
   echo $HOSTS
else
   echo unknown platform: $PLATFORM
   exit 1
fi
