#!/bin/bash
LIST="$1"
FILEBASE="$2"
DATEMARKER="$3"


while read ASEname HOSTname
do
  FILENAME="${DATEMARKER}__${ASEname}_${FILEBASE}"

  echo "collecting $FILENAME from host $HOSTname (ASE folder of instance ${ASEname})"
  ./collectASE_file_by_ASE_HOST_FILEBASE_DATEMARKER.sh $ASEname $HOSTname $FILEBASE $DATEMARKER
done < $LIST

exit 0
