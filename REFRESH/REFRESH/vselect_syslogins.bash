#!/bin/bash


s+  <<EOF
select @@servername ;
select * from syslogins 
; -m vert
EOF

echo "Exiting."
exit 0
