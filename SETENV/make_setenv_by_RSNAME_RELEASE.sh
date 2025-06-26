#!/bin/bash
RSNAME="$1"
RELEASE="$2"


echo ""
echo "BASEPATH=/sbin:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/DBA/sybase/gnu_2.5_ASE-15.7/bin:/opt/quest/bin"
echo "BASELDLIBRARYPATH=/usr/local/lib"
echo ""
echo "DSQUERY=$RSNAME"
echo ""
echo "SYBASE=/DBA/sybase/${RELEASE}"
echo "SYBASE_REP=REP-16_0"
echo "SYBASE_OCS=OCS-16_0"
echo ""
echo "PATH=\$SYBASE/\$SYBASE_REP/bin:\$SYBASE/\$SYBASE_OCS/bin:\$SYBASE/bin:\$BASEPATH"
echo "LD_LIBRARY_PATH=\$SYBASE/\$SYBASE_REP/lib:\$SYBASE/\$SYBASE_OCS/lib:\$SYBASE/\$SYBASE_OCS/lib3p:\$SYBASE/\$SYBASE_OCS/lib3p64:\$BASELDLIBRARYPATH"
echo ""
echo "export SYBASE SYBASE_REP SYBASE_OCS"
echo "export PATH LD_LIBRARY_PATH"
echo ""

exit 0
