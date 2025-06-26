#!/bin/bash
RELEASE="$1"
SERVERNAME="$2"
HOSTNAME="$3"
PORT="$4"
PAGESIZE="$5"


SERVERNAME="${SERVERNAME:-${SRV_SID}}"
HOSTNAME="${HOSTNAME:-$(hostname)}"
PORT="${PORT:-$(./get_PORT.bash)}"
PAGESIZE="${PAGESIZE:-$(./get_PAGESIZE.bash)}"
RELEASE="${RELEASE:-${SYBASE:16}}"
# echo $SERVERNAME
# echo $HOSTNAME
# echo $PORT
# echo $PAGESIZE
# echo $RELEASE

SHORTNAME=${SERVERNAME:2}
# echo $SHORTNAME
BS_SERVERNAME="BS${SHORTNAME}"
# echo $BS_SERVERNAME

echo "srvbuild.release_directory: /DBA/sybase/ASE-${RELEASE}"
echo "srvbuild.product: sqlsrv"
echo "srvbuild.server_name: $SERVERNAME"
echo "srvbuild.new_config: no"
echo "srvbuild.do_add_server: yes"
echo "srvbuild.do_upgrade: no"
echo "srvbuild.network_protocol_list: tcp"
echo "srvbuild.network_hostname_list: $HOSTNAME"
echo "srvbuild.network_port_list: $PORT"
echo "srvbuild.server_page_size: $PAGESIZE"
echo "srvbuild.master_device_physical_name: /DBD/${SERVERNAME}/DATA1/${SHORTNAME}.MASTER"
echo "srvbuild.master_device_size: 128"
echo "srvbuild.master_database_size: 64"
echo "srvbuild.errorlog: /DBA/nest/sybase/${SERVERNAME}/logs/errorlog_$SERVERNAME"
echo "srvbuild.configfile: /DBA/nest/sybase/${SERVERNAME}/conf/$SERVERNAME.cfg"
echo "srvbuild.sybsystemprocs_device_physical_name: /DBD/${SERVERNAME}/DATA1/${SHORTNAME}.SYSPROC"
echo "srvbuild.sybsystemprocs_device_size: 256"
echo "srvbuild.sybsystemprocs_database_size: 256"
echo "srvbuild.sybsystemdb_device_physical_name: USE_DEFAULT"
echo "srvbuild.sybsystemdb_device_size: 5"
echo "srvbuild.sybsystemdb_database_size: 5"
echo "srvbuild.default_backup_server: $BS_SERVERNAME"

exit 0
