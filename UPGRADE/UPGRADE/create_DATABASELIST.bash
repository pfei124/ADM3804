#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
rm -f database_list.tmp

s+ <<EOF >database_list.tmp
select name from sysdatabases
where name not in ("dbccdb","model","sybsystemdb","tempdb","tempdb2")
;
EOF

NUMLINES=$(wc -l database_list.tmp | cut -d" " -f1)
cat database_list.tmp | gawk "{ if (NR>2 && NR<$NUMLINES-1) { print \$1 } }" >${DATEMARKER}__${SRV_SID}_databaselist
cat database_list.tmp | gawk "{ if (NR>2 && NR<$NUMLINES-1) { printf \"%s \",\$1 } } END { print \"\" }" >${DATEMARKER}__${SRV_SID}_databaseline

exit 0
