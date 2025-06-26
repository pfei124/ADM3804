#!/bin/bash
ASIQ="$1"
HOST="$2"
FILENAME="$3"

scp ${HOST}:/WORK/DUMP/${ASIQ}/wp/ASIQ/${FILENAME} ${FILENAME}

exit 0
