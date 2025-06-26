#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF | tee ${DATEMARKER}__${SRV_SID}_aseconfigure.txt
sp_configure ;
EOF

exit 0
