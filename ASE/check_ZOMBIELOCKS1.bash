#!/bin/bash


s+ << EOF
select 
"spid"     = convert(char(4),l.spid),
"login"    = substring(suser_name(p.suid),1,16),
"dbname"   = substring(db_name(l.dbid),1,16),
"table"    = substring(object_name(l.id,l.dbid),1,16),
"locktyp"  = substring(v.name,1,10),
"command"  = substring(p.cmd,1,10),
"lockcnt"  = count(l.id),
"timediff" = datediff(ss, p.loggedindatetime, getdate())
from syslocks l
left join sysprocesses p on p.spid = l.spid
inner join spt_values v on v.number = l.type and v.type = "L"
group by l.spid, p.suid, l.dbid, l.id, v.name, p.cmd, p.loggedindatetime
;
EOF

exit 0
