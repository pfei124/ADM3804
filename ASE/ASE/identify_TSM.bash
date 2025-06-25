#!/bin/bash
ASENAME="$1"

[ -z "$ASENAME" ] && ASENAME=$SRV_SID
DATEMARKER=$(date '+%Y%m%d')
rm -f identify_TSM.tmp

# cdd
grep "TSM[0-9]" /DBA/nest/sybase/$ASENAME/data/server.config | grep -v "^#" >identify_TSM.tmp

# cdpd
grep "TSM[0-9]" /DBA/nest/sybase/data/server.config | grep -v "^#" >>identify_TSM.tmp

cat identify_TSM.tmp | cut -d":" -f2 | sort -u | tee ${DATEMARKER}__${ASENAME}_tsmservers.txt 
rm -f identify_TSM.tmp

exit 0
