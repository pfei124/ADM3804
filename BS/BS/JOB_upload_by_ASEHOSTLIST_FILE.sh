#!/bin/bash
LIST="$1"
FILE="$2"

./BATCH_prepareBS_file_by_ASE_HOST_FILE.sh  $LIST $FILE 2>wp1
./BATCH_scopyBS_ASEHOSTLIST_FILE.sh         $LIST $FILE 2>wp2
./BATCH_postpareBS_file_by_ASE_HOST_FILE.sh $LIST $FILE 2>wp3

exit 0
