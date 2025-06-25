#!/bin/bash
DATEMARKER="$1"

[ -z "$DATEMARKER" ] && DATEMARKER=$(date '+%Y%m%d') 

/bin/rm ${DATEMARKER}*

exit 0
