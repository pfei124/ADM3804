#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
OUTFILE="${DATEMARKER}__${SRV_SID}_ipv4.txt"

ip address | grep "inet " | tee $OUTFILE

exit 0
