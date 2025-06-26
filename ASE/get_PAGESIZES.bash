#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_pagesizes.txt"

s+ << EOF | tee $OUTFILE
select 
"wpmarker" as "Marker",
convert(char(12),@@servername) "ASEname",
@@pagesize "PageSize",
@@maxpagesize "LogicalPageSize"
;
EOF

exit 0
