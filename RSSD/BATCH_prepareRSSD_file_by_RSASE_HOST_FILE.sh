#!/bin/bash
LIST="$1"
FILENAME="$2"

while read RSname ASEname HOSTname
do
  echo "$HOSTname : chmod 775 on file $FILENAME ..."
  ./prepareRSSD_file_by_RSASE_HOST_FILE.sh $RSname $ASEname $HOSTname $FILENAME
done < $LIST

exit 0
