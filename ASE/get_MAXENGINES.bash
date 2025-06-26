#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_engines.txt"

s+ << EOF | tee $OUTFILE
sp_configure "max online engines" ;
EOF

exit 0
