#!/bin/bash
ASENAME="$1"

[ -z "$ASENAME" ] && ASENAME=$SRV_SID

echo "PATH:"
echo $PATH | gawk '{ line=$0 ; imax=split(line,arr,":") ; for (i=1;i<=imax;i++) { print " " arr[i] } }'

exit 0
