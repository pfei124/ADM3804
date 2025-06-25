#!/bin/bash


DATEMARKER=$(date '+%Y%m%d')
LOGFILE="${SRV_SID}_lockserver.log"

sybadmin --lockserver | tee ${DATEMARKER}__${LOGFILE}

exit 0
