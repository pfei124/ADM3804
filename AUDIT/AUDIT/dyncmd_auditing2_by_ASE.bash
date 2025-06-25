#!/bin/bash
ASENAME="$1"

. /DBA/nest/senv/senv.sh s $ASENAME
dyncmd --id=auditing1

exit 0
