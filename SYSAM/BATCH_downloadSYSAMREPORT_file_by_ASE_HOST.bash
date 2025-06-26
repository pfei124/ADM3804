#!/bin/bash
LIST="$1"


while read ASEname HOSTname
do
  ./downloadSYSAMREPORT_file_by_ASE_HOST.bash $ASEname $HOSTname
done < $LIST

exit 0
