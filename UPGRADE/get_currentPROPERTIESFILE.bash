#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
PROPERTIESFILE="${SRV_SID}.properties"

cp -p $SYBASE/$SYBASE_ASE/sysam/${PROPERTIESFILE} ${DATEMARKER}__${PROPERTIESFILE}

exit 0
