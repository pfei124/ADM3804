#!/bin/bash

s+  <<EOF
use DAUD001 ;
insert audit_data 
select * from sybsecurity..sysaudits_01
;
EOF

exit 0
