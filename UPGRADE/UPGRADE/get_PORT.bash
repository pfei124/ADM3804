#!/bin/bash
ASENAME="$1"

[ -z "$ASENAME" ] && ASENAME=$SRV_SID
[ -z "$SRV_SID" ] && exit 1

rm -f get_PORT.tmp

grep -w -A1 $ASENAME $SYBASE/interfaces >get_PORT.tmp 
gawk '/tcp/ { print $5 }' get_PORT.tmp

exit 0
