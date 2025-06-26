#!/bin/bash
RS="$1"
ASE="$2"
HOST="$3"
FILENAME="$4"

scp ${HOST}:/WORK/DUMP/${ASE}/wp/RSSD/${FILENAME} ${FILENAME}

exit 0
