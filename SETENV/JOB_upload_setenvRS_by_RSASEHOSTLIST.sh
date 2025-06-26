#!/bin/bash
LIST="$1"


./BATCH_prepare_setenvRSfile_by_RSASEHOSTLIST.sh  $LIST 2>wp1
./BATCH_pushsetenvRS_RSASEHOSTLIST.sh             $LIST 2>wp2
./BATCH_postpare_setenvRSfile_by_RSASEHOSTLIST.sh $LIST 2>wp3

exit 0
