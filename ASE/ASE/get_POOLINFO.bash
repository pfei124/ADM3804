#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_poolinfo.txt"

s+ << EOF | tee $OUTFILE
select 
"wpmarker" as "Marker",
convert(char(12),@@servername) "ASEname",
cache_name,
io_size,
config_size,
run_size,
apf_percent, 
wash_size,
cacheid,
instanceid,
scope
from syspoolinfo
;
EOF

exit 0
