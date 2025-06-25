#!/bin/bash
DATEMARKER="$1"
HOUR="$2"

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

if (( $HOUR < 0 || $HOUR > 24 ));
then
  echo ""
  echo "No correct hour given. Format is <hh>"
  echo "Aborting!"
  exit 1
fi
HOUR=$(( $HOUR % 24 ))
if (( $HOUR < 10 ));
then
  HOUR="0${HOUR}"
fi

ERRORLOG_FILENAME="errorlog_${SRV_SID}"
ERRORLOG="/DBA/nest/sybase/${SRV_SID}/logs/${ERRORLOG_FILENAME}"

# debug
# echo $DATEMARKER
# echo $HOUR  

gawk -f 6hrerrorlog.awk $ERRORLOG $DATEMARKER $HOUR

echo ""
exit 0
