#!/bin/bash
LIST="$1"
#LIST="paramlist"
#LIST="paramlist2"

while read paramname
do
  echo "$paramname"
  ./make_csv_by_PARAMNAME.bash "$paramname"
done < $LIST

exit 0
