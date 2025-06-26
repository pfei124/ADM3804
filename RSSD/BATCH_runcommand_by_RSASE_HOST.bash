#!/bin/bash
LIST="$1"

while read RSname ASEname HOSTname
do
  echo "executing on host $HOSTname ..."
  ./runcommand_by_RSASE_HOST.bash $RSname $ASEname $HOSTname
done < $LIST

exit 0
