#!/bin/bash
DBNAME="$1"
TABLENAME="$2"
DATEMARKER="$3"

if [ $# -ne 3 ]
then
  echo "Not enough arguments supplied."
  echo "Call: $0 <dbname> <tablename> <datemarker>"
  echo "Aborting!"
  exit 1
fi

SAPASSWD=$(nestpwd --get sa --batch)
BCPFILE="${DATEMARKER}_${SRV_SID}_${DBNAME}_${TABLENAME}.bcp"

bcp ${DBNAME}..${TABLENAME} out ${BCPFILE} -Usa -P"$SAPASSWD" -S${SRV_SID} -c -t"<|>"

echo "Exiting."
exit 0
