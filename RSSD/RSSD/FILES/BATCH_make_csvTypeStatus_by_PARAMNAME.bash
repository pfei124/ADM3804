#!/bin/bash
LIST="rsparameterlist"
#LIST="rsparameterlist_PL03"
#LIST="rsparameterlist_PL06"


while read paramname
do
  echo "$paramname"
  ./make_csvTypeStatus_by_PARAMNAME.bash "$paramname"
done < $LIST

exit 0
