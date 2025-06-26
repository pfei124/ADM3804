#!/bin/bash

RSNAME="RS${SRV_SID:2}"
DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${RSNAME}_config.txt"


s+ << EOF | tee $OUTFILE
admin config ; -m vert
EOF

exit 0
