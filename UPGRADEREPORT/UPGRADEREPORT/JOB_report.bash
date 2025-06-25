#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
ASEVERSIONFILE="${DATEMARKER}__aseversions"
ASESPACEUSEDFILE="${DATEMARKER}__asespaceused"
OSFILE="${DATEMARKER}__osreleases"

echo "getting the ASE versions ..."
./BATCH_get_aseversion_by_ASELIST.bash aselist  > $ASEVERSIONFILE
echo "getting the ASE space usage ..."
./BATCH_get_usedspace_by_ASELIST.bash  aselist  > $ASESPACEUSEDFILE
echo "getting the OS releases ..."
./BATCH_get_osrelease_by_HOSTLIST.bash hostlist 2>/dev/null > $OSFILE

echo "preparing the ssv-files"
./eval_aseversions.awk  $ASEVERSIONFILE >${ASEVERSIONFILE}.ssv
./eval_asespaceused.awk $ASESPACEUSEDFILE >${ASESPACEUSEDFILE}.ssv
./eval_osreleases.awk   $OSFILE >${OSFILE}.ssv

echo ""
echo "${ASEVERSIONFILE}.ssv , ${ASESPACEUSEDFILE}.ssv and ${OSFILE}.ssv to be viewed with Excel"
exit 0
