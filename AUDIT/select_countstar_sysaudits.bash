#!/bin/bash

s+  <<EOF
use sybsecurity;
select "sysaudits_01" "table",count(*) from sysaudits_01 ;
select "sysaudits_02" "table",count(*) from sysaudits_02 ;
EOF

exit 0
