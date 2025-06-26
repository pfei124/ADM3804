#!/bin/bash
PARAMNAME="$1"

grep -A6 "$PARAMNAME" *config.txt >wp
sed -f csv_by_PARAMNAME.sed <wp >wp1

./csvTypeStatus_by_PARAMNAME.gawk "$PARAMNAME" wp1 >wp2
cp wp2 ${PARAMNAME}_TypeStatus.ssv

exit 0
