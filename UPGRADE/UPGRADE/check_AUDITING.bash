#!/bin/bash


DATEMARKER=$(date '+%Y%m%d')
LOGFILE="${SRV_SID}_check_auditing.log"

s+ <<EOF | tee $LOGFILE
sp_configure 'auditing'
;
EOF

exit 0
