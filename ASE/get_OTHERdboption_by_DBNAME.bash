#!/bin/bash
DBNAME="$1"

# DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF
select
name,
OTHERoptions =  case
  when (status & 32048  = 0) AND (status2 & 6  = 0) then "NO"
  when (status & 32048 <> 0)  OR (status2 & 6 <> 0) then "YES"
end
from sysdatabases
where name = "$DBNAME"
;
EOF

exit 0
