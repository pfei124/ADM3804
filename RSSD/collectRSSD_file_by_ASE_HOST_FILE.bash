#!/bin/bash
ASE="$1"
HOST="$2"
FILENAME="$3"

scp ${HOST}:/WORK/DUMP/${ASE}/wp/RSSD/${FILENAME} FILES/${FILENAME}

exit 0
