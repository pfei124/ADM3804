#!/bin/bash
DBNAME="$1"


s+ <<EOF
use ${DBNAME}
;
select 
(convert(numeric(19,0),dpagecrcnt*8) - pagecnt) as "defrag-indicator",
convert(char(40),object_name(t.id)) tabname,
t.indid,
rowcnt,
pagecnt,
convert(numeric(19,0),convert(numeric(19,0),rowcnt)/convert(numeric(19,0),pagecnt)),
dpagecrcnt,
convert(numeric(19,0),dpagecrcnt*8) 
from systabstats t 
inner join sysobjects o on o.id = t.id and o.type = "U"
where t.indid in (0,1)
order by (convert(numeric(19,0),dpagecrcnt*8) - pagecnt),object_name(t.id)
;
EOF

exit 0
