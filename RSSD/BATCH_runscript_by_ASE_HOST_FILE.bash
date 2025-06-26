#!/bin/bash
LIST="$1"
FILENAME="$2"

while read ASEname HOSTname
do
  echo "running script $FILENAME on host $HOSTname ..."
  ./runscript_by_ASE_HOST_FILE.bash $ASEname $HOSTname $FILENAME
done < $LIST

exit 0
