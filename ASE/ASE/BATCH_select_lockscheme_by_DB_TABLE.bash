#!/bin/bash
DBNAME="$1"
LIST="$2"


while read tabname
do
  echo $DBNAME " " $tabname
  ./select_lockscheme_by_DB_TABLE.bash $DBNAME $tabname
done < $LIST

exit 0
