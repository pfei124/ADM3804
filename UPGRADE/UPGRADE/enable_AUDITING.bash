#!/bin/bash


DATEMARKER=$(date '+%Y%m%d')
LOGFILE="${SRV_SID}_enable_auditing.log"

s+ <<EOF | tee $LOGFILE
sp_configure 'auditing', 1
;
EOF

exit 0
