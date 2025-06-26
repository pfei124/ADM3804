#!/bin/bash


DATEMARKER=$(date '+%Y%m%d')
LOGFILE="${SRV_SID}_unlockserver.log"

sybadmin --unlockserver | tee ${DATEMARKER}__${LOGFILE}

exit 0
