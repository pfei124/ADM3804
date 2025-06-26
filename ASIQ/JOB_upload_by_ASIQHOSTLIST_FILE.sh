#!/bin/bash
LIST="$1"
FILE="$2"

./BATCH_prepareASIQ_file_by_ASIQ_HOST_FILE.sh  $LIST $FILE 2>wp1
./BATCH_scopyASIQ_ASIQHOSTLIST_FILE.sh         $LIST $FILE 2>wp2
./BATCH_postpareASIQ_file_by_ASIQ_HOST_FILE.sh $LIST $FILE 2>wp3

exit 0
