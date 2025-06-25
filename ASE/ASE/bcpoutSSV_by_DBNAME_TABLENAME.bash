#!/bin/bash
DBNAME="$1"
TABLENAME="$2"

DATEMARKER=$(date '+%Y%m%d')

SAPASSWD=$(nestpwd --batch --get sa)
BCPFILE="${DATEMARKER}__${SRV_SID}_${DBNAME}_${TABLENAME}.ssv"

bcp ${DBNAME}..${TABLENAME} out ${BCPFILE} -Usa -P"$SAPASSWD" -S${SRV_SID} -c -t";"

echo "Exiting."
exit 0
