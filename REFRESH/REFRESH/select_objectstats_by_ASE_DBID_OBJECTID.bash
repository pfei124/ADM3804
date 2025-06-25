#!/bin/bash
ASE="$1"
DBID="$2"
OBJECTID="$3"

rm -f temp.sql
touch temp.sql

echo ""                                                      >>temp.sql
echo "select DBID,ObjectID,convert(char,DBName,10) dbname,"  >>temp.sql
echo "convert(char,ObjectName,14) objectname,LogicalReads,"  >>temp.sql
echo "PhysicalReads,APFReads,PagesRead,PhysicalWrites"       >>temp.sql
echo "from monOpenObjectActivity"                            >>temp.sql
echo "where DBID = $DBID and ObjectID = $OBJECTID"           >>temp.sql
echo ";"                                                     >>temp.sql

s+ --server="$ASE" --ifile=temp.sql

exit 0
