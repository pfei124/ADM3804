#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_scale.txt"

s+ << EOF | tee $OUTFILE
select  
"wpmarker" as "Marker",
convert(char(12),@@servername) "ASEname",
@@pagesize "PAGESIZE",
@@maxpagesize "LOGICALPAGESIZE",
low "LOW",
low/1024 "SCALE"
from spt_values
where number = 1 
and type = "E"
;
EOF

exit 0
