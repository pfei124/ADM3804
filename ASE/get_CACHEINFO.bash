#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_cacheinfo.txt"

s+ << EOF | tee $OUTFILE
select 
"maaaarker" Marker,
convert(char(15),@@servername) ASEname,
convert(char(40),c.name) name,
c.value,
c.status,
cc.memory_used,
cc.apf_percent
from sysconfigures c
inner join syscurconfigs cc on cc.config = c.config and cc.comment = c.name
where c.config = 19 
;
EOF

exit 0
