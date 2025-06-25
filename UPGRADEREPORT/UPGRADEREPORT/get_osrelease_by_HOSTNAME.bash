#!/bin/bash
HOST="$1"

# echo " ${HOST}"
ssh -o LogLevel=error $HOST "grep VERSION_ID /etc/os-release"

exit 0
