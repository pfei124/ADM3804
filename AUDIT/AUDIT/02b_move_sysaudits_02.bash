#!/bin/bash

s+  <<EOF
use DAUD001 ;
insert audit_data 
select * from sybsecurity..sysaudits_02
;
EOF

exit 0
