#!/bin/bash
LIST="$1"
FILENAME="$2"

while read RSname ASEname HOSTname
do
  echo "$HOSTname : setting owner sybase on file $FILENAME ..."
  ./postpareRSSD_file_by_RSASE_HOST_FILE.sh $RSname $ASEname $HOSTname $FILENAME
done < $LIST

exit 0
