#!/bin/bash
LIST="$1"

while read ASEname HOSTname
do
  echo "executing on host $HOSTname ..."
  ./runcommand_by_ASE_HOST.bash $ASEname $HOSTname
done < $LIST

exit 0
