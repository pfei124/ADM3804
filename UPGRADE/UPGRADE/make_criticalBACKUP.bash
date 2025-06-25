#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
LOGBASE1="${SRV_SID}_masterbackup_raw.log"
LOGBASE2="${SRV_SID}_systables_bcpout.log"
ALOGFILE1="${DATEMARKER}a__${LOGBASE1}"
ALOGFILE2="${DATEMARKER}a__${LOGBASE2}"
BLOGFILE1="${DATEMARKER}b__${LOGBASE1}"
BLOGFILE2="${DATEMARKER}b__${LOGBASE2}"

if [ ! -f $LOGFILE1 ] && [ ! -f $LOGFILE2 ]; then
   :
   # echo "File $LOGFILE does not exist."
elif [ ! -f $ALOGFILE1 ] && [ ! -f $ALOGFILE2 ]; then
   # echo "File $LOGFILE exists."
   # echo "File $ALOGFILE does not exist."
   LOGFILE1="$ALOGFILE1"
   LOGFILE2="$ALOGFILE2"
elif [ ! -f $BLOGFILE1 ] && [ ! -f $BLOGFILE2 ]; then
   # echo "File $LOGFILE exists."
   # echo "File $ALOGFILE exists."
   # echo "File $BLOGFILE does not exist."
   LOGFILE1="$BLOGFILE1"
   LOGFILE2="$BLOGFILE2"
else
   echo "File $LOGFILE1 or $LOGFILE2 exists."
   echo "File $ALOGFILE1 or $ALOGFILE2 exists."
   echo "File $BLOGFILE1 or $BLOGFILE2 exists."
   echo "Tidy up logfiles!"
   echo "Aborting!"
   exit 1
fi


dumpsrv --database=master,sybsystemprocs --raw | tee $LOGBASE1
dumptable --database=master --mode=c --table=sysusages,syslogins,sysdatabases,sysdevices,sysloginroles | tee $LOGBASE2

exit 0
