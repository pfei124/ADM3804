#!/bin/bash
DBNAME="$1"
TABNAME="$2"


s+ <<EOF
use ${DBNAME}
;
select 
convert(varchar(40),object_name(p.id)) as name,
(select convert(varchar(30),i.name) from sysindexes i where i.id = p.id and i.indid = p.indid),
convert(varchar(30),p.name) as ptnname, 
p.indid,
convert(decimal(5,3),derived_stat(p.id,p.indid,p.partitionid, 'sput')) as 'sput',
convert(decimal(5,3),derived_stat(p.id,p.indid,p.partitionid, 'dpcr')) as 'dpcr',
convert(decimal(5,3),derived_stat(p.id,p.indid,p.partitionid, 'drcr')) as 'drcr',
convert(decimal(5,3),derived_stat(p.id,p.indid,p.partitionid, 'ipcr')) as 'ipcr',
convert(decimal(5,3),derived_stat(p.id,p.indid,p.partitionid, 'lgio')) as 'lgio'
from syspartitions p
inner join sysobjects o on o.id = p.id
and o.type = "U"
order by object_name(p.id)
-- and lockscheme(p.id) = "allpages"
-- where lockscheme(p.id) = "allpages"
-- and (select o.type from sysobjects o where o.id = p.id) = 'U'
;
EOF

exit 0
