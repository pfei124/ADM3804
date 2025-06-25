#!/bin/bash -x
LIST="$1"
FILE="$2"

./BATCH_prepare_scopyUPGRADE_file_by_ASE_HOST_FILE.sh  $LIST $FILE 2>wp1
./BATCH_pushtowpUPGRADE_ASEHOSTLIST_FILE.sh            $LIST $FILE 2>wp2
./BATCH_postpare_scopyUPGRADE_file_by_ASE_HOST_FILE.sh $LIST $FILE 2>wp3

exit 0
