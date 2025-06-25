#!/bin/bash
DBNAME="$1"

if [ "$1" == "" ]; then
  echo ""
  echo "No database name given."
  echo "Aborting!"
fi

ASENAME="${SRV_SID}"
BSNAME="BS${SRV_SID:2}"

# Backup Server: 4.41.1.1: Creating new disk file /WORK/DUMP/DBSPERS04/DBSPERS04.DERS000
# echo $ASENAME
# echo $BSNAME
egrep '(Backup Server: 4.58.1.1|Backup Server: 3.42.1.1)' /DBA/nest/sybase/${BSNAME}/logs/errorlog_${BSNAME}  | grep $DBNAME


echo ""
echo "Exiting."
exit 0
