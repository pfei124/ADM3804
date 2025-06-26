#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF  | tee ${DATEMARKER}__${SRV_SID}_bindsa_tempdb2.txt
sp_tempdb 'bind','lg','sa','db','tempdb2' ;
;
EOF

exit 0
