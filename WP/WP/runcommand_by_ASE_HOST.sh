#!/bin/bash
ASE="$1"
HOST="$2"
FILENAME="$3"

# ssh -n ${HOST} "echo 'z' ; cd /WORK/DUMP/${ASE}/wp ; source setenv__${ASE} ; ./${FILENAME} $ASE"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; chmod 775 RSSD"

# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chown -R sybase *"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/UPGRADE ; sudo chmod 777 get_globalCONFIGFILE.bash"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/UPGRADE ; rm get_globalCONFIGFILE.bash"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE} ; sudo chown -R sybase wp"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chmod 775 UPGRADE"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp/UPGRADE ; sudo chown sybase *"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir REFRESH"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir LM"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chown -R sybase REFRESH"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chown -R sybase LM"

# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir AWK"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chmod 775 TMP"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE} ; sudo chown -R sybase wp"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir ASIQ"

# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir ASE"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir BS"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir HOST"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir REFRESH"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir SYSAM"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir UPGRADE"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chmod 775 *"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE} ; sudo chown -R sybase wp"

# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chmod 775 LM"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mv LM SYSAM"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE} ; rmdir AUDIT"

# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE} ; mkdir wp"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; mkdir RS"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chown sybase HOST"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; sudo chmod 775 HOST"
# ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /WORK/DUMP/${ASE}/wp ; rm scan_errorlog.bash"

ssh -n ${HOST} "echo 'z' ; . /DBA/nest/senv/senv.sh s $ASE ; cd /DBA/nest/sybase/${ASE}/logs ; ls -al *.ctl"

exit 0
