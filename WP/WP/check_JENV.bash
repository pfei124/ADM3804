#!/bin/bash
ASENAME="$1"

[ -z "$ASENAME" ] && ASENAME=$SRV_SID
HOSTNAME=$(hostname)
DATEMARKER=$(date '+%Y%m%d')

OUTFILE="${DATEMARKER}__${SRV_SID}_javaenvironment.txt"
rm -f $OUTFILE

echo "---------------------------------------------------------------------------" > $OUTFILE
echo "Java-Environment:  $SRV_SID @ $HOSTNAME"                                     >>$OUTFILE
echo "SYBASE:            $SYBASE"                                                  >>$OUTFILE
echo "JAVA_HOME:         $JAVA_HOME"                                               >>$OUTFILE
echo "SAP_JRE7:          $SAP_JRE7"                                                >>$OUTFILE
echo "SAP_JRE8:          $SAP_JRE8"                                                >>$OUTFILE
echo "SCC_JAVA_HOME:     $SCC_JAVA_HOME"                                           >>$OUTFILE
echo "COCKPIT_JAVA_HOME: $COCKPIT_JAVA_HOME"                                       >>$OUTFILE
echo "CLASSPATH:         $CLASSPATH"                                               >>$OUTFILE
echo "JDBC_HOME:         $JDBC_HOME"                                               >>$OUTFILE
echo ""                                                                            >>$OUTFILE

exit 0
