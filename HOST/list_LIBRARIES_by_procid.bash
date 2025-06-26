#!/bin/bash
PROCID="$1"

# sudo cat /proc/${PROCID}/smaps | gawk '{ if ((NR-1)%22 == 0 ) { print NR,$0 } }' | gawk '{ print $7 }' | sort -u
sudo cat /proc/${PROCID}/maps | awk '{print $6}' | grep '\.so' | sort | uniq

exit 0
