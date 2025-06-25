#!/bin/bash
LIST="$1"
FILENAME="$2"

while read ASEname HOSTname
do
  echo "pushing file $FILENAME to host $HOSTname (BS folder of instance ${ASEname})"
  ./scopyBS_file_by_ASE_HOST_FILE.sh $ASEname $HOSTname $FILENAME
done < $LIST

exit 0
