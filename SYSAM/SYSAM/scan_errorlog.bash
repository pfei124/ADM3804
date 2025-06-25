#!/bin/bash


DATEMARKER=$(date '+%Y%m%d')

grep -i sysam /DBA/nest/sybase/${SRV_SID}/logs/errorlog_${SRV_SID}  >${DATEMARKER}__${SRV_SID}_sysam_messages.txt

exit 0
