#!/bin/bash
DBNAME="$1"

DATEMARKER=$(date '+%Y%m%d')

echo "dumping database $DBNAME ..."
dumpsrv --prg_extension=WP --database=${DBNAME} | tee ${DATEMARKER}__${SRV_SID}_${DBNAME}_dumpsrv.log

exit 0
