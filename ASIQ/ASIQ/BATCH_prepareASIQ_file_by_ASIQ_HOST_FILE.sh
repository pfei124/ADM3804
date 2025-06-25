#!/bin/bash
LIST="$1"
FILENAME="$2"

while read ASIQname HOSTname
do
  echo "$HOSTname : chmod 775 on file $FILENAME ..."
  ./prepareASIQ_file_by_ASIQ_HOST_FILE.sh $ASIQname $HOSTname $FILENAME
done < $LIST

exit 0
