#!/bin/bash
ASENAME="$1"

# echo "ASEname : $ASENAME"
s+ --server=${ASENAME} --ifile=servername.sql &>/dev/null
rc=$?
if [ $rc -eq 0 ]; then
    echo "$ASENAME 	: connect successful."
else
    echo "$ASENAME 	: NO CONNECT!"
fi

exit 0
