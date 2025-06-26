#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_cpus.txt"

lscpu | grep "^CPU(s):" | gawk '{ print $2 }' | tee $OUTFILE

exit 0
