#!/bin/bash


s+  <<EOF
use DAUD001;
select "audit_data" "table",count(*) from audit_data ;
select "audit_failed_logins" "table",count(*) from audit_failed_logins ;
select "audit_sa_tabchanges" "table",count(*) from audit_sa_tabchanges ;
EOF

exit 0
