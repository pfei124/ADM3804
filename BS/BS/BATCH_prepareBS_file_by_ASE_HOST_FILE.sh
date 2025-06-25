#!/bin/bash
LIST="$1"
FILENAME="$2"

while read ASEname HOSTname
do
  echo "$HOSTname : chmod 775 on file $FILENAME ..."
  ./prepareBS_file_by_ASE_HOST_FILE.sh $ASEname $HOSTname $FILENAME
done < $LIST

exit 0
