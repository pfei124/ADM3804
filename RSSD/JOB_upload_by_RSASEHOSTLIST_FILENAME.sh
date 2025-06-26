#!/bin/bash
LIST="$1"
FILE="$2"

./BATCH_prepareRSSD_file_by_RSASE_HOST_FILE.sh  $LIST $FILE 2>wp1
./BATCH_scopyRSSD_RSASEHOSTLIST_FILE.bash       $LIST $FILE 2>wp2
./BATCH_postpareRSSD_file_by_RSASE_HOST_FILE.sh $LIST $FILE 2>wp3

exit 0
