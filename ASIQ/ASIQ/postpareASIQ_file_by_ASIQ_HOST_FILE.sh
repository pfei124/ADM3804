#!/bin/bash
ASIQ="$1"
HOST="$2"
FILENAME="$3"


ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASIQ ; cd /WORK/DUMP/${ASIQ}/wp/ASIQ ; sudo chown sybase $FILENAME ; sudo chmod 775 $FILENAME"

exit 0
