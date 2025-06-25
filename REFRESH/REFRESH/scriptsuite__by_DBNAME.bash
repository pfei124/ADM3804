#!/bin/bash
DBNAME="$1"

DATETIMEMARKER=$(date '+%Y%m%d')
# DATETIMEMARKER=$(date '+%Y%m%d%H%M%S')

./helpdb.bash      >${DATETIMEMARKER}_${SRV_SID}_helpdb.dat
getddl --dboptions >${DATETIMEMARKER}_${SRV_SID}_dboptions.ddl
getddl --dbowners  >${DATETIMEMARKER}_${SRV_SID}_dbowners.ddl

./bcpout_by_DBNAME_TABLENAME.bash $DBNAME sysusers ${DATETIMEMARKER}
./bcpout_by_DBNAME_TABLENAME.bash $DBNAME sysroles ${DATETIMEMARKER}

./helpuser_by_DBNAME.bash $DBNAME >${DATETIMEMARKER}_${SRV_SID}_${DBNAME}_helpuser.dat
./helprole_by_DBNAME.bash $DBNAME >${DATETIMEMARKER}_${SRV_SID}_${DBNAME}_helprole.dat

./revuser_by_DBNAME.bash  $DBNAME >${DATETIMEMARKER}_${SRV_SID}_${DBNAME}_revuser.dat
./revrole_by_DBNAME.bash  $DBNAME >${DATETIMEMARKER}_${SRV_SID}_${DBNAME}_revrole.dat
./revalias_by_DBNAME.bash $DBNAME >${DATETIMEMARKER}_${SRV_SID}_${DBNAME}_revalias.dat

./select_sysusers_by_DBNAME.bash $DBNAME >${DATETIMEMARKER}_${SRV_SID}_${DBNAME}_sysusers.dat
./select_sysroles_by_DBNAME.bash $DBNAME  >${DATETIMEMARKER}_${SRV_SID}_${DBNAME}_sysroles.dat
./select_sysalternates_by_DBNAME.bash $DBNAME  >${DATETIMEMARKER}_${SRV_SID}_${DBNAME}_sysalternates.dat

exit 0
