#!/bin/bash

RSNAME="RS${SRV_SID:2}"
DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${RSNAME}_rsversion.txt"


s+ << EOF | tee $OUTFILE
admin version ;
EOF

exit 0
