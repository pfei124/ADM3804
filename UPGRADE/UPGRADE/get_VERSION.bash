#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
VERSIONFILE="${SRV_SID}_version.txt"
LOGFILE="${DATEMARKER}__${VERSIONFILE}"
ALOGFILE="${DATEMARKER}a__${VERSIONFILE}"
BLOGFILE="${DATEMARKER}b__${VERSIONFILE}"

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
   echo ""
   echo "Aborting!"
   exit 1
fi


s+ <<EOF | tee $LOGFILE
select @@version ;
sp_version ;
EOF


echo ""
echo "Result written to $LOGFILE"
echo ""
echo "Exiting."
exit 0
