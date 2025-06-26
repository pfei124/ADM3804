#!/bin/bash
LIST="$1"

while read dbname
do
  echo $dbname
  ./getDUMPHISTORY_by_DBNAME.bash $dbname | tail -17
done < $LIST

exit 0
