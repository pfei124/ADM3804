#!/bin/bash
LIST="$1"
FILEBASE="$2"
DATEMARKER="$3"


while read ASEname HOSTname
do
  RSNAME="RS${ASEname:2}"
  FILENAME="${DATEMARKER}__${RSNAME}_${FILEBASE}"

  echo "collecting $FILENAME from host $HOSTname (RSSD folder of instance ${ASEname})"
  ./collectRSSD_file_by_ASE_HOST_FILEBASE_DATEMARKER.bash $ASEname $HOSTname $FILEBASE $DATEMARKER
done < $LIST

exit 0
