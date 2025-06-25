#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
USAGEFILE="${DATEMARKER}__${SRV_SID}_spaceusage.txt"
LOGFILE="${DATEMARKER}__${USAGEFILE}"
ALOGFILE="${DATEMARKER}a__${USAGEFILE}"
BLOGFILE="${DATEMARKER}b__${USAGEFILE}"

if [ ! -f $LOGFILE ]; then
   :
   # echo "File $LOGFILE does not exist."
elif [ ! -f $ALOGFILE ]; then
   # echo "File $LOGFILE exists."
   # echo "File $ALOGFILE does not exist."
LOGFILE="$ALOGFILE"
elif [ ! -f $BLOGFILE ]; then
   # echo "File $LOGFILE exists."
   # echo "File $ALOGFILE exists."
   # echo "File $BLOGFILE does not exist."
   LOGFILE="$BLOGFILE"
else
   echo "File $LOGFILE exists."
   echo "File $ALOGFILE exists."
   echo "File $BLOGFILE exists."
   echo "Tidy up logfiles!"
   echo "Aborting!"
   exit 1
fi


s+ <<EOF | tee $LOGFILE
set nocount on ;
sp_configure "enable pci" ;
sp_configure "enable java" ;
sp_configure "auditing" ;
sp_configure "disable disk mirroring" ;
EOF

exit 0
