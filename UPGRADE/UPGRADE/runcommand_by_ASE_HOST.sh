#!/bin/bash
ASE="$1"
HOST="$2"
FILENAME="$3"

# ssh -n ${HOST} "echo 'z' ; cd /WORK/DUMP/${ASE}/wp ; source setenv__${ASE} ; ./${FILENAME} $ASE"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; chmod 775 RSSD"

# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chown -R sybase *"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/UPGRADE ; sudo chmod 777 get_globalCONFIGFILE.bash"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/UPGRADE ; rm get_globalCONFIGFILE.bash"
ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE} ; sudo chown -R sybase wp"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chmod 775 UPGRADE"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/UPGRADE ; sudo chown sybase *"

exit 0
