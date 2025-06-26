#!/bin/bash
ASE="$1"

# echo " ${ASE}"
s+ --server=${ASE} --ifile=version.sql

exit 0
