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
echo "select u.dbid,db.name,u.segmap,u.lstart,u.size,u.size*100/@@maxpagesize,u.crdate," >>temp.sql
echo "convert(char(50),d.phyname) phyname"                      >>temp.sql             
echo "from sysusages u"                                         >>temp.sql
echo "inner join sysdevices d on d.vdevno = u.vdevno"           >>temp.sql
echo "inner join sysdatabases db on db.dbid = u.dbid"           >>temp.sql
echo "where db.name = '$DBNAME'"                                >>temp.sql
echo "order by u.lstart"                                        >>temp.sql
echo ";"                                                        >>temp.sql
s+ --ifile=temp.sql

echo "Exiting."
exit 0
