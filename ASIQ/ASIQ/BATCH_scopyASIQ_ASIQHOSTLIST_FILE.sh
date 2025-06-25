#!/bin/bash
LIST="$1"
FILENAME="$2"

while read ASIQname HOSTname
do
  echo "pushing file $FILENAME to host $HOSTname (ASIQ folder of instance ${ASIQname})"
  ./scopyASIQ_file_by_ASIQ_HOST_FILE.sh $ASIQname $HOSTname $FILENAME
done < $LIST

exit 0
