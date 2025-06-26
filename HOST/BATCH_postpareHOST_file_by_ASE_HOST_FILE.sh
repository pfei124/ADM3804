#!/bin/bash
LIST="$1"
FILENAME="$2"

while read ASEname HOSTname
do
  echo "$HOSTname : setting owner sybase on file $FILENAME ..."
  ./postpareHOST_file_by_ASE_HOST_FILE.sh $ASEname $HOSTname $FILENAME
done < $LIST

exit 0
