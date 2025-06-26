#!/bin/bash
LIST="$1"
FILE="$2"

./BATCH_prepareASE_file_by_ASE_HOST_FILE.sh  $LIST $FILE 2>wp1
./BATCH_scopyASE_ASEHOSTLIST_FILE.sh         $LIST $FILE 2>wp2
./BATCH_postpareASE_file_by_ASE_HOST_FILE.sh $LIST $FILE 2>wp3

exit 0
