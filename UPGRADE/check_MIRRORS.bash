#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF  | tee ${DATEMARKER}__${SRV_SID}_mirrors.txt
set nocount on ;
select "${SRV_SID}" as "ASEname",name,convert(char(40),mirrorname) "mirror"
from sysdevices
where mirrorname is not NULL or name in ("master","sysprocsdev")
;
EOF

exit 0
