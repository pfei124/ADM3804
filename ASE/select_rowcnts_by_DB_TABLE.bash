#!/bin/bash
DBNAME="$1"
TABLE="$2"


s+ <<EOF
use ${DBNAME}
;
select 
convert(char(40),object_name(t.id)) tabname,
convert(numeric(19,0),rowcnt) rowcnt
from systabstats t 
inner join sysobjects o on o.id = t.id and o.type = "U"
where object_name(t.id) = "$TABLE"
and   t.indid in (0,1)
;
EOF

exit 0
