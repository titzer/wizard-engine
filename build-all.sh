#!/bin/bash

TARGET=${TARGET:=x86-linux}

while read line; do
    config=$(cut -d: -f1 <<< $line)
    opts=$(cut -d: -f2 <<< $line)
    echo $config
    V3C_OPTS="$opts" ./build.sh wizeng $TARGET && mv bin/wizeng.$TARGET /tmp/wizeng.$config
done < configs.txt
