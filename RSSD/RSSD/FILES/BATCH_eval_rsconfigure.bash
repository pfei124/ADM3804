#!/bin/bash
LIST="$1"

while read name
do
  echo "converting file ${name}.txt ..."
  ./eval_rsconfigure.awk ${name}.txt >${name}.ssv
done < $LIST

exit 0
