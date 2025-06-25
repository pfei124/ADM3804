#!/bin/bash
DBNAME="$1"


s+ <<EOF
use ${DBNAME}
;
select 
convert(char(40),object_name(t.id)) tabname,
convert(numeric(19,0),rowcnt) rowcnt
from systabstats t 
inner join sysobjects o on o.id = t.id and o.type = "U"
where t.indid in (0,1)
order by object_name(t.id)
;
EOF

exit 0
