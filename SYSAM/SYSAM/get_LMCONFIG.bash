#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_lmconfig.txt"

s+ << EOF | tee $OUTFILE
sp_lmconfig
;
EOF

exit 0
