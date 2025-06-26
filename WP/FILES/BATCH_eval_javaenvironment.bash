#!/bin/bash
LIST="$1"


while read filename
do
 # echo $filename
 ./eval_javaenvironment.awk $filename
done < $LIST

exit 0
