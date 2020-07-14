#!/bin/bash

PAT=jawa
PAT=${PAT/w/v}

FILES="$(find src) $(find test) $(find scripts)"

grep -s -i --color $PAT $FILES
