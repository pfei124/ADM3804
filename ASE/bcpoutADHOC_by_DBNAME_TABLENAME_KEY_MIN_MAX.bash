#!/bin/bash
DBNAME="$1"
TABLENAME="$2"
KEYCOL="$3"
KEYMIN="$4"
KEYMAX="$5"

DATEMARKER=$(date '+%Y%m%d')

SAPASSWD=$(nestpwd --batch --get sa)
BCPFILE="${DATEMARKER}__${SRV_SID}_${DBNAME}_${TABLENAME}__${KEYCOL}_${KEYMIN}.csv"

echo "writing file $BCPFILE ..."
s+  <<EOF > $BCPFILE
select * from ${DBNAME}..$TABLENAME
where $KEYCOL between $KEYMIN and $KEYMAX
; -m csv
EOF

exit 0
