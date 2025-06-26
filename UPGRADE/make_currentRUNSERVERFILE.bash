#!/bin/bash
ACTION="$1"

TMPFILE="RUNserver.tmp"
OUTFILE="RUN_${DSQUERY}__${SYBASE:16}"
rm -f $TMPFILE

echo "#!/bin/sh"                                                            > $TMPFILE
echo "###############################################################"      >>$TMPFILE
echo "# RUN_DATASERVER                                               "      >>$TMPFILE
echo "#                                                              "      >>$TMPFILE
echo "# Release: ${SYBASE:12}                                        "      >>$TMPFILE
echo "#                                                              "      >>$TMPFILE
echo "# script-generated RUN_DATASERVER script                       "      >>$TMPFILE
echo "#                                                              "      >>$TMPFILE
echo "###############################################################"      >>$TMPFILE
echo "                                                               "      >>$TMPFILE
echo "$SYBASE/$SYBASE_ASE/bin/dataserver \                           "      >>$TMPFILE
echo "-s${DSQUERY} \                                                 "      >>$TMPFILE
echo "-e$SRV_LOG_DIR/errorlog_${DSQUERY} \                           "      >>$TMPFILE
echo "-c$SRV_BASE/conf/$DSQUERY.cfg \                                "      >>$TMPFILE
echo "-M$SYBASE \                                                    "      >>$TMPFILE
echo "-d$SYBASE_MASTERDEVICE \                                       "      >>$TMPFILE

if [[ $SYBASE_STARTPARAMETER != "" ]];
then
  echo "${SYBASE_STARTPARAMETER} & echo $!> $SRV_BASE/etc/dataserver.pid "  >>$TMPFILE
else
  echo "& echo $!> $SRV_BASE/etc/dataserver.pid "                           >>$TMPFILE
fi
echo ""                                                                     >>$TMPFILE

if [[ "$ACTION" == "write" ]];
then
  rm -f $OUTFILE
  cp $TMPFILE $OUTFILE
else
  cat $TMPFILE
fi

exit 0
