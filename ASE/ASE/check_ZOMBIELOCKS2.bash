#!/bin/bash


s+ << EOF
select 
'spid' = convert(char(4),l.spid),
'login' = substring(suser_name(p.suid),1,16),
'dbname' = substring(db_name(l.dbid),1,16),
'table' = substring(object_name(l.id,l.dbid),1,16),
'locktyp' = substring(v.name,1,10),
'command' = substring(p.cmd,1,10),
'lockcnt' = count(l.id),
'timediff' = datediff(ss, p.loggedindatetime, getdate())
from master..syslocks l, master..spt_values v, master..sysprocesses p
where p.spid =* l.spid and l.type = v.number and v.type = 'L'
group by l.spid, p.suid, l.dbid, l.id, v.name, p.cmd, p.loggedindatetime
;
EOF

exit 0
