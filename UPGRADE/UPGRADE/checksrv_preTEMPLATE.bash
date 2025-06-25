#!/bin/bash

for DB in XXX1 XXX2 XXX3
do
  echo "checking database $DB ..."
  checksrv --database=${DB} | tee check_${DB}.log
done

exit 0
