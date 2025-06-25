#!/bin/bash
PARAMNAME="$1"

grep -A6 "$PARAMNAME" *config.txt >wp
sed -f csv_by_PARAMNAME.sed <wp >wp1

./csv_by_PARAMNAME.gawk "$PARAMNAME" wp1 >wp2
cp wp2 ${PARAMNAME}.ssv

exit 0
