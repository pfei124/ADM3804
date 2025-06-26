#!/bin/bash


DATEMARKER=$(date '+%Y%m%d')
LOGFILE="${SRV_SID}_disable_auditing.log"

s+ <<EOF | tee $LOGFILE
sp_configure 'auditing', 0
;
EOF

exit 0
