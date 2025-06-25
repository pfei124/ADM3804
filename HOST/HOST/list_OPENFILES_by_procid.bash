#!/bin/bash
PROCID="$1"

lsof -p ${PROCID} | awk '{print $9}' | grep "/"

exit 0
