#!/bin/bash
ASE="$1"
HOST="$2"
FILENAME="$3"

scp ${HOST}:/WORK/DUMP/${ASE}/wp/REFRESH/${FILENAME} ${FILENAME}

exit 0
