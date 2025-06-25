#!/bin/bash
LIST="$1"
FILEBASE="$2"
DATEMARKER="$3"


while read ASIQname HOSTname
do
  FILENAME="${DATEMARKER}__${ASIQname}_${FILEBASE}"

  echo "collecting $FILENAME from host $HOSTname (ASIQ folder of instance ${ASIQname})"
  ./collectASIQ_file_by_ASIQ_HOST_FILEBASE_DATEMARKER.sh $ASIQname $HOSTname $FILEBASE $DATEMARKER
done < $LIST

exit 0
