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
echo "sp__revuser ;"      >>temp.sql
s+ --ifile=temp.sql

echo "Exiting."
exit 0
