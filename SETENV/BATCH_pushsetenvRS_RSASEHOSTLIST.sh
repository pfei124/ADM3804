#!/bin/bash
LIST="rs_ase_host_list"


while read RSname ASEname HOSTname
do
  echo "pushing file setenv__${RSname} to host $HOSTname (folder of instance ${ASEname}/wp)"
  ./push_by_ASE_HOST_FILE.sh $ASEname $HOSTname setenv__${RSname}
done < $LIST

exit 0
