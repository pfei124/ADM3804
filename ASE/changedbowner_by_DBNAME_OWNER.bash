#!/bin/bash
DBNAME="$1"
OWNER="$2"

# DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF
use $DBNAME
;
sp_changedbowner $OWNER
;
EOF

exit 0
