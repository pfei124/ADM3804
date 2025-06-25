#!/bin/bash
DBNAME="$1"

if [ $# -ne 1 ]
then
  echo "No database name supplied."
  echo "Call: $0 <dbname>"
  echo "Aborting!"
  exit 1
fi

if [ -z "$SRV_SID" ]; 
then 
  echo "Variable SRV_SID is not set."
  echo "Aborting!"
  exit 1
fi

DATEMARKER=$(date '+%Y%m%d')

BASE_DS="${DATEMARKER}__${SRV_SID}_${DBNAME}_derivedstats"
RAWFILE_DS="${BASE_DS}.raw"
SSVFILE_DS="${BASE_DS}.ssv"

BASE_RC="${DATEMARKER}__${SRV_SID}_${DBNAME}_rowcounts"
RAWFILE_RC="${BASE_RC}.raw"
SSVFILE_RC="${BASE_RC}.ssv"


./select_derivedstats_by_DBNAME.bash  $DBNAME >  $RAWFILE_DS
./eval_derived_stats.gawk         $RAWFILE_DS >  $SSVFILE_DS

./select_rowcnts_by_DBNAME.bash       $DBNAME >  $RAWFILE_RC
./eval_rowcnts.gawk               $RAWFILE_RC >  $SSVFILE_RC

echo "$SSVFILE_DS and $SSVFILE_RC are now to be processed."
echo "Exiting."
exit 0
