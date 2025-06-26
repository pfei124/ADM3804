#!/bin/bash
LIST="$1"


while read filenamebase
do
  ./eval_memory.gawk ${filenamebase}.txt > ${filenamebase}.ssv
done < $LIST

exit 0
