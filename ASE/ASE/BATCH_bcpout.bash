#!/bin/bash
DBNAME="$1"
TABNAME="$2"
KEYCOL="$3"
MIN="$4"
MAX="$5"

if [ $# -ne 5 ]
then
  echo "Not enough arguments supplied."
  echo "Call: $0 <dbname> <tablename> <key-column> <min-value> <max-value>"
  echo "Aborting!"
  exit 1
fi

BATCHSIZE=20000
NUMBATCHES=$(($MAX/$BATCHSIZE + 1))
echo "keymin:  " $MIN " keymax: " $MAX " number of batches: " $NUMBATCHES


for ((b=1; b<=$NUMBATCHES; b++))
do
  loopmin=$(($MIN + $BATCHSIZE*$(($b - 1)) ))
  loopmax=$(($loopmin + $BATCHSIZE - 1))
  if (( $loopmax > $MAX ));
  then
    loopmax=$(($MAX))
  fi
  echo "loopmin: " $loopmin " loopmax: " $loopmax " batch: " $b
  ./bcpoutADHOC_by_DBNAME_TABLENAME_KEY_MIN_MAX.bash $DBNAME $TABNAME $KEYCOL $loopmin $loopmax
done

exit 0
