#!/bin/bash
DBNAME="$1"
TABNAME="$2"

##  "sput" : space utilization
##  "dpcr" : data page cluster ratio
##  "drcr" : data row cluster ratio
##  "ipcr" : index page cluster ratio
##  "lgio" : large I/O efficiency


s+ <<EOF
use ${DBNAME}
;

print ""
print "Explanation:"
print "sput : space utilization"
print "dpcr : data page cluster ratio"
print "drcr : data row cluster ratio"
print "ipcr : index page cluster ratio"
print "lgio : large I/O efficiency"
print ""

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
and o.name = "$TABNAME"
;
EOF

exit 0
