#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF  | tee ${DATEMARKER}__${SRV_SID}_unbindsa_tempdb2.txt
sp_tempdb unbind, lg, sa ;
;
EOF

exit 0
