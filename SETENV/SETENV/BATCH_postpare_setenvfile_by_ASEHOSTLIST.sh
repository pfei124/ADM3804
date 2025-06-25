#!/bin/bash
LIST="$1"


while read ASEname HOSTname
do
  echo "$HOSTname : setting owner, etc on setenv-file for $ASEname ..."
  ./postpare_setenvfile_by_ASE_HOST.sh $ASEname $HOSTname
done < $LIST

exit 0
