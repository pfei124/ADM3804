#!/bin/bash
SOURCEASE="$1"
DESTASE="$2"
DBNAME="$3"
NUMSTRIPS="$4"
TIMESTAMP="$5"
ID="$6"

COMMANDEND="go"
# COMMANDEND=";"

if [ $# -ne 6 ]
then
  echo "Not enough arguments supplied."
  echo "Call: $0 <sourceasew> <destase> <dbname> <numstrips> <timestamp> <id>"
  echo "Aborting!"
  exit 1
fi

DIR="/WORK/DUMP/${DESTASE}/restore"
FILENAME_PART1="${SOURCEASE}.${DBNAME}.DMP.${TIMESTAMP}.${ID}"
# SCRIPTFILE="load_${DBNAME}_wp.sql"
SCRIPTFILE="load_${DBNAME}.sql"

rm -f $SCRIPTFILE
case "$NUMSTRIPS" in
1)  echo "You chose 1 stripe"
    echo "load database $DBNAME from '${DIR}/${FILENAME_PART1}.1S0.sz'"   >> $SCRIPTFILE
    echo "${COMMANDEND}"                                                  >> $SCRIPTFILE
    echo "online database $DBNAME"                                        >> $SCRIPTFILE
    echo "${COMMANDEND}"                                                  >> $SCRIPTFILE
    echo ""                                                               >> $SCRIPTFILE
    ;;
2)  echo "You chose 2 stripes"
    echo "load database $DBNAME from '${DIR}/${FILENAME_PART1}.2S0.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.2S1.sz'"   >> $SCRIPTFILE
    echo "${COMMANDEND}"                                                  >> $SCRIPTFILE
    echo "online database $DBNAME"                                        >> $SCRIPTFILE
    echo "${COMMANDEND}"                                                  >> $SCRIPTFILE
    echo ""                                                               >> $SCRIPTFILE
    ;;
4)  echo "You chose 4 stripes"
    echo "load database $DBNAME from '${DIR}/${FILENAME_PART1}.4S0.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.4S1.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.4S2.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.4S3.sz'"   >> $SCRIPTFILE
    echo "${COMMANDEND}"                                                  >> $SCRIPTFILE
    echo "online database $DBNAME"                                        >> $SCRIPTFILE
    echo "${COMMANDEND}"                                                  >> $SCRIPTFILE
    echo ""                                                               >> $SCRIPTFILE
    ;;
8)  echo "You chose 8 stripes"
    echo "load database $DBNAME from '${DIR}/${FILENAME_PART1}.8S0.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.8S1.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.8S2.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.8S3.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.8S4.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.8S5.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.8S6.sz'"   >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.8S7.sz'"   >> $SCRIPTFILE
    echo "${COMMANDEND}"                                                  >> $SCRIPTFILE
    echo "online database $DBNAME"                                        >> $SCRIPTFILE
    echo "${COMMANDEND}"                                                  >> $SCRIPTFILE
    echo ""                                                               >> $SCRIPTFILE
    ;;
16) echo "You chose 16 stripes"
    echo "load database $DBNAME from '${DIR}/${FILENAME_PART1}.16S0.sz'"  >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S1.sz'"  >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S2.sz'"  >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S3.sz'"  >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S4.sz'"  >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S5.sz'"  >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S6.sz'"  >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S7.sz'"  >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S8.sz'"  >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S9.sz'"  >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S10.sz'" >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S11.sz'" >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S12.sz'" >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S13.sz'" >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S14.sz'" >> $SCRIPTFILE
    echo "                 stripe on '${DIR}/${FILENAME_PART1}.16S15.sz'" >> $SCRIPTFILE
    echo "${COMMANDEND}"                                                  >> $SCRIPTFILE
    echo "online database $DBNAME"                                        >> $SCRIPTFILE
    echo "${COMMANDEND}"                                                  >> $SCRIPTFILE
    echo ""                                                               >> $SCRIPTFILE
    ;;
*)  echo "You must choose 1,2,4,8 or 16 stripes!!"
    echo "Aborting!"
    exit 2
    ;;
esac


echo "File ${SCRIPTFILE} is now ready to use."
echo "Exiting."
exit 0
