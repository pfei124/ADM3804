#!/bin/bash
ASE="$1"
HOST="$2"

# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/ASE ; chmod -R 775 ASE"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/ASE ; sudo chown sybase *"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/ASE ; ./deletefiles_by_DATEMARKER.bash 20250422"
ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/ASE ; dbccdb --show_history"

exit 0
