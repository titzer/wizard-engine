#!/bin/bash

T=/tmp/jit-filter/
mkdir -p $T

$HOME/wizard-engine/bin/wizeng.x86-64-linux -mode=int $@ > $T/ref

START=${START:=0}
END=${END:=10000}

i=$START
while [ $i -lt $END ]; do
    echo == $i =====
    $HOME/wizard-engine/bin/wizeng.x86-64-linux -mode=jit -jit-filter=$i $@ > $T/${i}
    diff $T/ref $T/${i}
    i=$(($i + 1))
done
