#!/bin/bash


echo "LD_LIBRARY_PATH:"
echo $LD_LIBRARY_PATH | gawk '{ line=$0 ; imax=split(line,arr,":") ; for (i=1;i<=imax;i++) { print " " arr[i] } }'

exit 0
