#!/bin/bash
LIST="$1"
FILEBASE="$2"
DATEMARKER="$3"


while read RSname ASEname HOSTname
do
  FILENAME="${DATEMARKER}__${RSname}_${FILEBASE}"

  echo "collecting $FILENAME from host $HOSTname (RSSD folder of instance ${ASEname})"
  ./collectRSSD_file_by_ASE_HOST_FILEBASE_DATEMARKER.bash $ASEname $HOSTname $FILEBASE $DATEMARKER
done < $LIST

exit 0
