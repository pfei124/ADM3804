#!/bin/bash
LIST="$1"


while read filenamebase
do
  ./eval_maxmemory.gawk ${filenamebase}.txt > ${filenamebase}.ssv
done < $LIST

exit 0
