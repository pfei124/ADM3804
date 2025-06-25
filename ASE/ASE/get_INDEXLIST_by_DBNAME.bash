#!/bin/bash
DBNAME="$1"
TABNAME="$2"

# DATEMARKER=$(date '+%Y%m%d')


s+ <<EOF
use ${DBNAME}
;
select 
convert(char(30),object_name(i.id)) tablename,
convert(char(30),i.name) indexname,
i.indid 
from sysindexes i
inner join sysobjects o on o.id = i.id and o.type = "U"
order by object_name(i.id),i.indid
;
EOF

exit 0
