#!/bin/bash

for DB in XXX1 XXX2 XXX3
do
  echo "checking database $DB ..."
  checksrv --database=${DB} | tee check_${DB}_post.log
done

exit 0
