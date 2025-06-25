#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
SAPASSWORD="$(nestpwd --get sa --batch)"

echo "About to run upgrade from from folder $SYBASE/$SYBASE_ASE/bin against ASE $SRV_SID ..."
read -p "Continue (Y/n)?" choice
if [[ "$choice" != "Y" ]];
then
  echo "Aborting!"
  exit 1
fi

# echo "$SYBASE/$SYBASE_ASE/bin/upgrade -S${SRV_SID} -P\"${SAPASSWORD}\" | tee upgrade_${SRV_SID}.log"
$SYBASE/$SYBASE_ASE/bin/upgrade -S${SRV_SID} -P"${SAPASSWORD}" | tee ${DATEMARKER}__${SRV_SID}_upgrade.log

echo "Exiting."
exit 0
