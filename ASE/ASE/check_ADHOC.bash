#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_adhoc.txt"

s+ << EOF | tee $OUTFILE
select
"maaarker" as Marker,
convert(char(20),ASEHostname()) HostName,
convert(char(15),@@servername) InstanceName,
DBName,
convert(char(10),BackupStartTime,112) backupdate,
convert(char(10),BackupStartTime,108) backuptime
from monOpenDatabases
-- where DBName like 'tempdb%';
order by DBName
;
EOF

exit 0
