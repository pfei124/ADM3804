#!/bin/bash
DBNAME="$1"
TABLE="$2"


s+ <<EOF
use ${DBNAME}
;
select "wpmarker" as "MARKER","$TABLE" as tablename,lockscheme("$TABLE") lockscheme
;
EOF

exit 0
