#!/bin/bash

s+  <<EOF
use sybsecurity ;
truncate table sysaudits_02
;
EOF

exit 0
