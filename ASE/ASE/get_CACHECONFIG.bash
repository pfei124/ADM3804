#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_cacheconfig.txt"

s+ << EOF | tee $OUTFILE
sp_cacheconfig "default data cache" ;
sp_cacheconfig "log_cache" ;
sp_cacheconfig "tempdb_cache" ;
sp_cacheconfig "dbccdb_cache" ;
EOF

exit 0
