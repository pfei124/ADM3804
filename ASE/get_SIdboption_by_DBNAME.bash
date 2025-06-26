#!/bin/bash
DBNAME="$1"

# DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF
select
name,
SIoption =  case
  when status & 4 = 0 then "NO"
  when status & 4 = 4 then "YES"
end
from sysdatabases
where name = "$DBNAME"
;
EOF

exit 0
