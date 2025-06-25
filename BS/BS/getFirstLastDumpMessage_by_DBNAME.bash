#!/bin/bash
DBNAME="$1"

if [ "$1" == "" ]; then
  echo ""
  echo "No database name given."
  echo "Aborting!"
  exit 1
fi

ASENAME="${SRV_SID}"
BSNAME="BS${SRV_SID:2}"

egrep '(DUMP is complete|Creating new disk file)' "DUMP is complete " /DBA/nest/sybase/${BSNAME}/logs/errorlog_${BSNAME} | grep $DBNAME

exit 0
