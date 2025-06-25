#!/bin/bash
DBNAME="$1"
LIST="$2"


while read tabname
do
  echo $DBNAME " " $tabname
  ./reorgrebuild_mute_updatestatistics_by_DBNAME_TABLE.bash $DBNAME $tabname
done < $LIST

exit 0
