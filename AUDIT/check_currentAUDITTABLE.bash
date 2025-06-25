#!/bin/bash

s+  <<EOF
select scc.value
from master.dbo.syscurconfigs scc, master.dbo.sysconfigures sc
where sc.config=scc.config and sc.name = "current audit table"
;
EOF

exit 0
