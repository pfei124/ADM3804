#!/bin/bash
DBNAME="$1"
TABNAME="$2"

# DATEMARKER=$(date '+%Y%m%d')


s+ <<EOF
use ${DBNAME}
;
select * from systabstats where id = object_id ("$TABNAME")
; -m vert
EOF

exit 0
