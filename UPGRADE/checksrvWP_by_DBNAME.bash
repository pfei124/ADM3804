#!/bin/bash
DBNAME="$1"

DATEMARKER=$(date '+%Y%m%d')

echo "checking database $DBNAME ..."
checksrv --prg_extension=WP --database=${DBNAME} | tee ${DATEMARKER}__${SRV_SID}_${DBNAME}_checksrv.log

exit 0
