#!/bin/bash


DATEMARKER=$(date '+%Y%m%d')
LOGFILE="${SRV_SID}_maintenance_on.txt"

moncontrol -maint=enable -expire=216000 | tee ${DATEMARKER}__${LOGFILE}

exit 0
