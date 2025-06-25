#!/bin/bash

rm -f temp.sql
echo "select @@servername ;"  >>temp.sql
echo "sp__helpdb ;"           >>temp.sql
s+ --ifile=temp.sql

echo "Exiting."
exit 0
