#!/bin/bash
PARAMNAME="$1"

FILEBASE=$(echo "$PARAMNAME" | tr -d "/" | tr " " "_")

echo $PARAMNAME >param.tmp
NUMPARTS=$(awk '{ n=split($0,arr," ") ; print n }' param.tmp)

grep "$PARAMNAME" *configuration.txt >wp
sed -f csv_by_PARAMNAME.sed <wp >wp1

./csv_by_PARAMNAME.gawk "$NUMPARTS" "$PARAMNAME" wp1 > wp2
sort -u <wp2 >${FILEBASE}.ssv

exit 0
