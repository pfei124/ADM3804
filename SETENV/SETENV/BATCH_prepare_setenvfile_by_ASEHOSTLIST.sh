#!/bin/bash
LIST="$1"

while read ASEname HOSTname
do
  echo "$HOSTname : chmod 775 on setenv-file for $ASEname ..."
  ./prepare_setenvfile_by_ASE_HOST.sh $ASEname $HOSTname
done < $LIST

exit 0
