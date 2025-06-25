#!/bin/bash
LIST="$1"

while read ASE RELEASE
do
  echo $ASE
  ./make_setenv_by_ASENAME_RELEASE.sh "$ASE" "$RELEASE" > setenv__${ASE}
done < $LIST

exit 0
