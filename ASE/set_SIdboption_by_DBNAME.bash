#!/bin/bash
DBNAME="$1"

# DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF
sp_dboption $DBNAME,"select into",true
;
use $DBNAME
;
checkpoint
;
EOF

exit 0
