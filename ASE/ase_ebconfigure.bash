#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF | tee ${DATEMARKER}__${SRV_SID}_ebconfigure.txt
sp__configure @doall="y"; -m vert
EOF

exit 0
