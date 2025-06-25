#!/bin/bash


s+  <<EOF
select name,suid
from syslogins
order by name ; -m csv
EOF

exit 0
