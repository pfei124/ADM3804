#!/bin/bash
ASENAME="$1"

[ -z "$ASENAME" ] && ASENAME=$SRV_SID

HOSTNAME=$(hostname)
DATEMARKER=$(date '+%Y%m%d')

OUTFILE="${DATEMARKER}__${SRV_SID}_sybaseenvironment.txt"
rm -f $OUTFILE

echo "-----------------------------------------------------------------------------" > $OUTFILE
echo "Sybase-Environment:    $SRV_SID @ $HOSTNAME"                                   >>$OUTFILE
echo "DSQUERY:               $DSQUERY"                                               >>$OUTFILE
echo "SYBASE:                $SYBASE"                                                >>$OUTFILE
echo "SYBASE_ASE:            $SYBASE_ASE"                                            >>$OUTFILE
echo "SYBASE_OCS:            $SYBASE_OCS"                                            >>$OUTFILE
echo "PATH:                  $PATH"                                                  >>$OUTFILE
echo "LD_LIBRARY_PATH:       $LD_LIBRARY_PATH"                                       >>$OUTFILE
echo "SYBASE_MASTERDEVICE:   $SYBASE_MASTERDEVICE"                                   >>$OUTFILE
echo "SYBASE_BACKUPSERVER:   $SYBASE_BACKUPSERVER"                                   >>$OUTFILE
echo "SYBASE_STARTPARAMETER: $SYBASE_STARTPARAMETER"                                 >>$OUTFILE
echo ""                                                                              >>$OUTFILE

exit 0
