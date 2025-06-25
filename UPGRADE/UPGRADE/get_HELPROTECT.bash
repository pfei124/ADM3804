#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE1="${DATEMARKER}__${SRV_SID}_sp_helprotect.txt"
OUTFILE2="${DATEMARKER}__${SRV_SID}_sp__helprotect.txt"

s+ <<EOF > $OUTFILE1
sp_helprotect ;
EOF

s+ <<EOF > $OUTFILE2
sp__helprotect ;
EOF

exit 0
