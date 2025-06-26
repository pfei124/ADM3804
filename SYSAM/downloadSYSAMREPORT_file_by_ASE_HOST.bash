#!/bin/bash
ASE="$1"
HOST="$2"

# 20250210__DBSIODS4_sysam_messages.txt
DATEMARKER=$(date '+%Y%m%d')
FILENAME="${DATEMARKER}__${ASE}_sysam_messages.txt"

scp ${HOST}:/WORK/DUMP/${ASE}/wp/${FILENAME} ${FILENAME}

exit 0
