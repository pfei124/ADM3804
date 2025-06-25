#!/bin/bash
ASENAME="$1"

[ -z "$ASENAME" ] && ASENAME=$SRV_SID

rm -f search_TSM.tmp

# cdd
grep "TSM[0-9]" /DBA/nest/sybase/$ASENAME/data/server.config >search_TSM.tmp

# cdpd
grep "TSM[0-9]" /DBA/nest/sybase/data/server.config >>search_TSM.tmp

cat search_TSM.tmp | cut -d":" -f2 | sort -u

exit 0
