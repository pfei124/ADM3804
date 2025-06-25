#!/bin/bash
LIST="$1"
FILENAME="$2"

while read RSname ASEname HOSTname
do
  echo "pushing file $FILENAME to host $HOSTname (RSSD folder of instance ${ASEname})"
  ./scopytoRSSD_file_by_ASE_HOST_FILE.bash $ASEname $HOSTname $FILENAME
done < $LIST

exit 0
