#!/bin/bash


DATEMARKER=$(date '+%Y%m%d')
LOGFILE="${SRV_SID}_maintenance_on.txt"

moncontrol -maint=disable | tee ${DATEMARKER}__${LOGFILE}

exit 0
