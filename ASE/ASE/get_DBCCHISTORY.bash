#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_dbcchistory.txt"

s+ << EOF | tee $OUTFILE
select db_name(dbid),opid,start,finish 
from dbccdb..dbcc_operation_log 
order by start
;
EOF

exit 0
