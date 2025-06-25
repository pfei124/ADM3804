#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_backup.txt"

s+ << EOF | tee $OUTFILE
select
"wpmarker" as Marker,
convert(char(20),ASEHostname()) HostName,
convert(char(15),@@servername) InstanceName,
DBName,
convert(char(12),BackupStartTime,112) backupstartdate,
convert(char(12),BackupStartTime,108) backupstarttime,
convert(char(12),BackupEndTime,112) backupenddate,
convert(char(12),BackupEndTime,108) backupendtime
from monOpenDatabases
-- where DBName like 'tempdb%';
order by DBName
;
EOF

exit 0
