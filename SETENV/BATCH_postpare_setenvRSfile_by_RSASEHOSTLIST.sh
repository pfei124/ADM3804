#!/bin/bash
LIST="$1"


while read RSname ASEname HOSTname
do
  echo "$HOSTname : setting owner, etc on setenv-file for $RSname ..."
  ./postpare_setenvRSfile_by_RSASEHOST.sh $RSname $ASEname $HOSTname
done < $LIST

exit 0
