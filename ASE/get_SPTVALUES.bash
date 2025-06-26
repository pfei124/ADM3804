#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_sptvalues.txt"

s+ << EOF | tee $OUTFILE
select 
convert(char(50),name) name,number,type,low,high,ansi_w,msgnum 
from spt_values 
order by type,name
; -m csv
EOF

exit 0
