#!/bin/bash
LIST="$1"

while read ASEname
do
  echo "$ASEname"
  s+ --server=${ASEname}  <<EOF
-- select getdate() ;
EOF
done < $LIST

exit 0
