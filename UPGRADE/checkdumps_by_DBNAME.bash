#!/bin/bash
DBNAME="$1"

echo $DBNAME
./getDUMPHISTORY_by_DBNAME.bash $DBNAME | tail -17

exit 0
