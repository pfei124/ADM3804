#!/bin/bash
LIST="$1"

if [ $# -ne 1 ]
then
  echo "No database list supplied."
  echo "Call: $0 <database-list>"
  echo "Aborting!"
  exit 1
fi

echo "exporting information on login accounts of ${SRV_SID}"
DATEMARKER=$(date '+%Y%m%d')
./vselect_syslogins.bash  >${DATEMARKER}_${SRV_SID}_MASTER_syslogins.dat
./select_syslogins.bash   >${DATEMARKER}_${SRV_SID}_MASTER_syslogins.csv
./bcpout_by_DBNAME_TABLENAME.bash master syslogins ${DATEMARKER}

echo ""
while read dbname
do
  echo "reverse engineering database $dbname"
  ./scriptsuite__by_DBNAME.bash $dbname
  echo ""
done < $LIST

exit 0
