#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_gnuinfo.txt"

echo "ASENAME:		$SRV_SID"             > $OUTFILE
echo "GNU_HOME:		$GNU_HOME"           >> $OUTFILE
echo "PRODUCT_GNU_HOME:	$PRODUCT_GNU_HOME"   >> $OUTFILE

grep "set histsize" $PRODUCT_GNU_HOME/etc/sqshrc >> $OUTFILE

exit 0
