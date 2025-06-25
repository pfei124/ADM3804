#!/bin/bash
DBNAME="$1"
TABLENAME="$2"

DATEMARKER=$(date '+%Y%m%d')

SAPASSWD=$(nestpwd --batch --get sa)
BCPFILE="${DATEMARKER}__${SRV_SID}_${DBNAME}_${TABLENAME}.csv"

s+  <<EOF > $BCPFILE
select * from ${DBNAME}..$TABLENAME
; -m csv
EOF

echo "Exiting."
exit 0
