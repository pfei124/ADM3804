#!/bin/bash
RS="$1"
ASE="$2"
HOST="$3"
FILENAME="$4"

# ssh -n ${HOST} "echo 'z' ; cd /WORK/DUMP/${ASE}/wp ; source setenv__${ASE} ; ./${FILENAME} $ASE"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $RS ; cd /WORK/DUMP/${ASE}/wp ; chmod 775 RSSD"

exit 0
