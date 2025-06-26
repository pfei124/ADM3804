#!/bin/bash
RS="$1"
ASE="$2"
HOST="$3"


FILENAME="setenv__${RS}"

ssh -n ${HOST} "echo 'z' ; cd /WORK/DUMP/${ASE}/wp ; sudo chmod 775 $FILENAME"

exit 0
