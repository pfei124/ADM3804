#!/bin/bash
DBNAME="$1"
TABLE="$2"


s+ <<EOF
use ${DBNAME}
;
print "running reorg rebuild on ${DBNAME}.${TABLE} ..."
reorg rebuild $TABLE ;
print "running update statistics on ${DBNAME}.${TABLE} ..."
update statistics $TABLE ;
EOF

exit 0
