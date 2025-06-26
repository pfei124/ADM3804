#!/bin/bash
ASE="$1"
HOST="$2"


FILENAME="setenv__${ASE}"

ssh -n ${HOST} "echo 'z' ; cd /WORK/DUMP/${ASE}/wp ; sudo chmod 775 $FILENAME"

exit 0
