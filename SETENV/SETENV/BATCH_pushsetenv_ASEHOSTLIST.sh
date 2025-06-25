#!/bin/bash
LIST="$1"


while read ASEname HOSTname
do
  echo "pushing file setenv__${ASEname} to host $HOSTname (folder of instance ${ASEname}/wp)"
  ./push_by_ASE_HOST_FILE.sh $ASEname $HOSTname setenv__${ASEname}
done < $LIST

exit 0
