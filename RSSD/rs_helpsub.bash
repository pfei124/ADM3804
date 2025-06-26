#!/bin/bash

RSSD="DRS${SRV_SID:4}"
RSNAME="RS${SRV_SID:2}"
DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF | tee ${DATEMARKER}__${RSNAME}_rshelpsub.txt
use $RSSD ;
rs_helpsub ; -m vert
EOF

exit 0
