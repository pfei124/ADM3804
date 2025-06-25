#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
SAPASSWORD="$(nestpwd --get sa --batch)"

echo "About to install installmaster,etc. from folder $SYBASE/$SYBASE_ASE/scripts in ASE $SRV_SID ..."
read -p "Continue (Y/n)?" choice
if [[ "$choice" != "Y" ]];
then
  echo "Aborting!"
  exit 1
fi

for SCRIPTPART in master model commit security dbccdb
do
  SCRIPT="install${SCRIPTPART}"
  echo "installing script $SCRIPT ..."
  isql -Usa -P"${SAPASSWORD}" -S${SRV_SID} -i$SYBASE/$SYBASE_ASE/scripts/$SCRIPT | tee ${DATEMARKER}__${SCRIPT}_${SRV_SID}.log
done

SCRIPT="instmsgs.ebf"
echo "installing script $SCRIPT ..."
isql -Usa -P"${SAPASSWORD}" -S${SRV_SID} -i$SYBASE/$SYBASE_ASE/scripts/$SCRIPT | tee ${DATEMARKER}__${SCRIPT}_${SRV_SID}.log

echo "Exiting."
exit 0
