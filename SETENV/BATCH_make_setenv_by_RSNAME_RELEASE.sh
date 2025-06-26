#!/bin/bash
LIST="$1"

while read RSNAME RELEASE
do
  echo $RSNAME
  ./make_setenv_by_RSNAME_RELEASE.sh "$RSNAME" "$RELEASE" > setenv__${RSNAME}
done < $LIST

exit 0
