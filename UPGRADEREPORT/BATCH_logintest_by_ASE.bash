#!/bin/bash
LIST="aselist"

while read ASEname
do
  ./logintest_by_ASE.bash $ASEname
done < $LIST

exit 0
