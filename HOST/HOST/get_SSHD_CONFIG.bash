#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')
MYHOSTNAME=$(hostname)
OUTFILE="${DATEMARKER}__${HOSTNAME}_sshd.txt"

sudo cat /etc/ssh/sshd_config | egrep -v '(^#|^$)' > $OUTFILE

exit 0
