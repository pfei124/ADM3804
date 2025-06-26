#!/bin/bash 
ASE="$1"
HOST="$2"
FILENAME="$3"

ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/SYSAM ; ./${FILENAME}"

exit 0
