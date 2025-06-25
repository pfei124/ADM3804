#!/bin/bash
LIST="$1"

while read RSname ASEname HOSTname
do
  echo "$HOSTname : chmod 775 on setenv-file for $RSname ..."
  ./prepare_setenvRSfile_by_RSASEHOST.sh $RSname $ASEname $HOSTname
done < $LIST

exit 0
