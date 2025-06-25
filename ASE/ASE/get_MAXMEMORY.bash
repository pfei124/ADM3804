#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_maxmemory.txt"

s+ << EOF | tee $OUTFILE
sp_configure "max memory" ;
EOF

exit 0
