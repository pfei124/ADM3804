#!/bin/bash
# DBNAME="$1"
DBNAME="DERS001"

# DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF
use $DBNAME
;
sp_adduser 'roari','roari','ariro#' ;
sp_adduser 'dbasym','dbasym','public' ;
EOF

exit 0
