#!/bin/bash

s+  <<EOF
sp_configure "current audit table"
;
sp_configure "current audit table", 0
;
sp_configure "current audit table"
;
EOF

exit 0
