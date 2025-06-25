#!/bin/bash
LIST="$1"
FILE="$2"

./BATCH_prepareWP_file_by_ASE_HOST_FILE.sh  $LIST $FILE 2>wp1
./BATCH_scopyWP_ASEHOSTLIST_FILE.sh         $LIST $FILE 2>wp2
./BATCH_postpareWP_file_by_ASE_HOST_FILE.sh $LIST $FILE 2>wp3

exit 0
