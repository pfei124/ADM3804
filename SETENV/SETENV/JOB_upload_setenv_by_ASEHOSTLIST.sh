#!/bin/bash
LIST="$1"


./BATCH_prepare_setenvfile_by_ASEHOSTLIST.sh  $LIST 2>wp1
./BATCH_pushsetenv_ASEHOSTLIST.sh             $LIST 2>wp2
./BATCH_postpare_setenvfile_by_ASEHOSTLIST.sh $LIST 2>wp3

exit 0
