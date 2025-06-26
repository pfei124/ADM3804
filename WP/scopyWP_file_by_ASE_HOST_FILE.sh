#!/bin/bash
ASE="$1"
HOST="$2"
FILENAME="$3"

scp ${FILENAME} ${HOST}:/WORK/DUMP/${ASE}/wp/${FILENAME}

exit 0
