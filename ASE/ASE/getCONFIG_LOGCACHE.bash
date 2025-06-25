#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_logcache.txt"

s+ << EOF | tee $OUTFILE
sp_cacheconfig log_cache ;
EOF

exit 0
