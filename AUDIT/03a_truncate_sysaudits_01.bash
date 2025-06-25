#!/bin/bash

s+  <<EOF
use sybsecurity ;
truncate table sysaudits_01
;
EOF

exit 0
