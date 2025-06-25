#!/bin/bash
DBNAME="$1"
TABLE="$2"
INDEX="$3"


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
inner join sysindexes i on i.id = o.id
and o.type = "U"
and o.name = "$TABLE"
and i.name = "$INDEX"
;

print "running reorg rebuild on ${DBNAME}.${TABLE} (${INDEX}) ..."
reorg rebuild $TABLE $INDEX ;
print "running update index statistics on ${DBNAME}.${TABLE} (${INDEX}) ..."
update index statistics $TABLE $INDEX ;

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
inner join sysindexes i on i.id = o.id
and o.type = "U"
and o.name = "$TABLE"
and i.name = "$INDEX"
;

EOF

exit 0
