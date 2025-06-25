#!/bin/bash
DBNAME="$1"
TABNAME="$2"

# DATEMARKER=$(date '+%Y%m%d')


s+ <<EOF
use ${DBNAME}
;
select 
convert(char(30),object_name(id)) tablename,
convert(char(30),name) indexname,
indid 
from sysindexes 
where object_name(id) = "$TABNAME" 
order by indid
;
EOF

exit 0
