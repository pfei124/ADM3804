#!/bin/bash

RSNAME="RS${SRV_SID:2}"
DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${RSNAME}_memlimit.txt"


s+ << EOF | tee $OUTFILE
admin config ,"memory_limit" ; -m vert
EOF

exit 0
