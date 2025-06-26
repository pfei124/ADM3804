#!/bin/bash
LIST="$1"

while read hostname
do
  echo "$hostname"
  ssh -n $hostname "grep VERSION= /etc/os-release"
done < $LIST

exit 0
