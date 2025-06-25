#!/bin/bash

RSSD="DRS${SRV_SID:4}"
RSNAME="RS${SRV_SID:2}"
DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF | tee ${DATEMARKER}__${RSNAME}_rsconfigure.txt
use $RSSD ;
rs_configure ;
EOF

exit 0
