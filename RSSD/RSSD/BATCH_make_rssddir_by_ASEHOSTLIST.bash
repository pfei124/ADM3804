#!/bin/bash
ASEHOSTLIST="$1"

while read ASEname HOSTname
do
  echo "${ASEname}@${HOSTname}"
  ssh -n $HOSTname "cd /WORK/DUMP/${ASEname}/wp ; mkdir RSSD"
done < $ASEHOSTLIST

exit 0
