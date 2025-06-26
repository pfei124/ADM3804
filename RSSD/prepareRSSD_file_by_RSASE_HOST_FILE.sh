#!/bin/bash
RS="$1"
ASE="$2"
HOST="$3"
FILENAME="$4"


ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/ASE ; sudo chmod 775 $FILENAME"

exit 0
