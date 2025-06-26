#!/bin/bash
LIST="$1"
FILENAME="$2"

while read RSname ASEname HOSTname
do
  echo "running RS-script $FILENAME on host $HOSTname ..."
  ./runscript_by_RSASE_HOST_FILE.bash $RSname $ASEname $HOSTname $FILENAME
done < $LIST

exit 0
