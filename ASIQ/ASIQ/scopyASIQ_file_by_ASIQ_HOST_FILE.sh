#!/bin/bash
ASIQ="$1"
HOST="$2"
FILENAME="$3"

scp ${FILENAME} ${HOST}:/WORK/DUMP/${ASIQ}/wp/ASIQ/${FILENAME}

exit 0
