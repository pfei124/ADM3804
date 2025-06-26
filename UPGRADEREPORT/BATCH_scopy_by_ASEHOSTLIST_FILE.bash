#!/bin/bash
ASEHOSTLIST="$1"
FILENAME="$2"

while read ASEname HOSTname
do
  echo "uploading file $FILENAME to ${ASEname}@${HOSTname}"
  scp ${FILENAME} "${HOSTname}:/WORK/DUMP/${ASEname}/wp/UPGRADE"
done < $ASEHOSTLIST

exit 0
