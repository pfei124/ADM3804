#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_configuration.txt"

s+ << EOF | tee $OUTFILE
sp_configure ;
EOF

exit 0
