#!/bin/bash
DATEMARKER="$1"

# check input param
YEAR=${DATEMARKER:0:4}
MONTH=${DATEMARKER:4:2}
DAY=${DATEMARKER:6:2}

if (( $YEAR < 1970 || $YEAR > 2050 ));
then
  echo ""
  echo "No correct datemarker given. Format is <yyyymmdd>"
  echo "Aborting!"
  exit 1
fi

if (( $MONTH < 1 || $MONTH > 12 ));
then
  echo ""
  echo "No correct datemarker given. Format is <yyyymmdd>"
  echo "Aborting!"
  exit 1
fi

if (( $DAY < 1 || $DAY > 31 ));
then
  echo ""
  echo "No correct datemarker given. Format is <yyyymmdd>"
  echo "Aborting!"
  exit 1
fi

TODAYMARKER=$(date '+%Y%m%d')

ERRORLOG_FILENAME="errorlog_${SRV_SID}"
ERRORLOG="/DBA/nest/sybase/${SRV_SID}/logs/${ERRORLOG_FILENAME}"
TEMPLOG="${ERRORLOG_FILENAME}.tmp"

# cp $ERRORLOG ${TEMPLOG}

if [[ "$DATEMARKER" != "$TODAYMARKER" ]];
then
  OUTLOG="${DATEMARKER}__${ERRORLOG_FILENAME}"
else
  OUTLOG="${DATEMARKER}t__${ERRORLOG_FILENAME}"
fi
# gawk -f dayerrorlog.awk $TEMPLOG $DATEMARKER > $OUTLOG
gawk -f dayerrorlog.awk $ERRORLOG $DATEMARKER > $OUTLOG

echo ""
echo "file ${OUTLOG} is now ready to be used."
echo "Exiting."
exit 0
