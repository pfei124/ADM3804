#!/bin/bash
ASE="$1"
HOST="$2"
FILENAME="$3"

# ssh -n ${HOST} "echo 'z' ; cd /WORK/DUMP/${ASE}/wp ; source setenv__${ASE} ; ./${FILENAME} $ASE"
ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/AWK ; ./${FILENAME}"

exit 0
