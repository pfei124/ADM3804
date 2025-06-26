#!/bin/bash
LIST="$1"

while read filename
do
  ./eval_sysamreport.awk "${filename}.txt" >${filename}.ssv
done < $LIST


exit 0
