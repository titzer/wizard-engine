#!/bin/bash

BIN=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
V3C_LINK=$BIN/v3c

PLATFORM=$(uname -sm)

HOSTS=""

if [[ "$PLATFORM" = "Darwin i386" || "$PLATFORM" = "Darwin x86_64" ]]; then
    H="x86-darwin"
    HOSTS="$H $HOSTS"
fi

if [[ "$PLATFORM" = "Darwin arm64" ]]; then
    H="arm64-darwin"
#TODO: unsupported target    HOSTS="$H $HOSTS"
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
