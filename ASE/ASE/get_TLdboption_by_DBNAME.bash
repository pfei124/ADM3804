#!/bin/bash
DBNAME="$1"

# DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF
select
name,
TLoption =  case
  when status & 8 = 0 then "NO"
  when status & 8 = 8 then "YES"
end
from sysdatabases
where name = "$DBNAME"
;
EOF

exit 0
