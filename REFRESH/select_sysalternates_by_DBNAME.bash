#!/bin/bash
DBNAME="$1"

if [ $# -ne 1 ]
then
  echo "Not enough arguments supplied."
  echo "Call: $0 <dbname>"
  echo "Aborting!"
  exit 1
fi


rm -f temp.sql
echo "select @@servername ;"  >>temp.sql
echo "use ${DBNAME} ;"    >>temp.sql
echo "select db_name() ;" >>temp.sql
echo "select a.suid,l.name,a.altsuid,u.name altname from sysalternates a" >>temp.sql
echo "left join master..syslogins l on l.suid = a.suid" >>temp.sql
echo "left join sysusers u on u.suid = a.altsuid" >>temp.sql
echo ";" >>temp.sql
s+ --ifile=temp.sql

echo "Exiting."
exit 0
