#!/bin/bash
LIST="$1"

while read ASEname HOSTname
do
  echo "executing on host $HOSTname ..."
  ./runcommand_by_ASE_HOST.sh $ASEname $HOSTname
done < $LIST

exit 0
