#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
GLOBALCONFIGFILE="global.config"
CONFIGFILE="server.config"
ALLCONFIGFILE="server1.config"
SERVERCONFIGFILE="server2.config"

cp -p /DBA/nest/sybase/${SRV_SID}/data/${CONFIGFILE} ${DATEMARKER}__${SRV_SID}_${SERVERCONFIGFILE}
cp -p /DBA/nest/sybase/data/${CONFIGFILE} ${DATEMARKER}__ALL_${ALLCONFIGFILE}
cp -p /DBA/nest/sybase/data/${GLOBALCONFIGFILE} ${DATEMARKER}__ALL_${GLOBALCONFIGFILE}

exit 0
