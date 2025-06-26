#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
CONFIGFILE="${SRV_SID}.cfg"

cp -p /DBA/nest/sybase/${SRV_SID}/conf/${CONFIGFILE} ${DATEMARKER}__${CONFIGFILE}


exit 0
