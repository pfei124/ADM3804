#!/bin/bash
DBNAME="$1"

# DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF
select
name,
ABoption =  case
  when status2 & 1 = 0 then "NO"
  when status2 & 1 = 1 then "YES"
end
from sysdatabases
where name = "$DBNAME"
;
EOF

exit 0
