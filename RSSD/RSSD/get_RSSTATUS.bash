#!/bin/bash

RSNAME="RS${SRV_SID:2}"
DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${RSNAME}_rsstatus.txt"

if [ "$SRV_SID" != "$RSNAME" ];
then
   echo "environment not set correctly."
   echo "Aborting!"
fi

show --status | tee $OUTFILE

echo ""
echo "Exiting."
exit 0
