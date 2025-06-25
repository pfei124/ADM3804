#!/bin/bash
LIST="$1"

while read ASEname
do
  s+ --server=${ASEname} --ifile=asespace.sql
done < $LIST

exit 0
