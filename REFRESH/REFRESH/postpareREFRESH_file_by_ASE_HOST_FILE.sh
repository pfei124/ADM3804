#!/bin/bash
ASE="$1"
HOST="$2"
FILENAME="$3"


ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/REFRESH ; sudo chown sybase $FILENAME ; sudo chmod 775 $FILENAME"

exit 0
