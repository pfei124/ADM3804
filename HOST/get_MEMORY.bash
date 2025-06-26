#!/bin/bash

## Memory block size:       128M
## Total online memory:      16G
## Total offline memory:      0B

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_memory.txt"

# lsmem | grep "^Total online memory:" | gawk '{ print substr($4, 1, length($4)-1) }' | tee $OUTFILE
lsmem | grep "^Total online memory:" | gawk '{ print $4 }' | tee $OUTFILE

exit 0
