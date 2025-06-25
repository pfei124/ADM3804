#!/bin/bash
DBNAME="$1"

# DATEMARKER=$(date '+%Y%m%d')

##  suid-remapping
##  19 -> 9   (moners)
##  15 -> 5   (roeros)
##  23 -> 15  (portalro)
##  16 -> 6   (repers)
##  3  -> 8   (sa2)
##  21 -> 12  (sap_eros)
##  22 -> 13  (sing057)

s+ <<EOF
use $DBNAME
;
update sysusers set suid =  9 where suid = 19 ;
update sysusers set suid =  5 where suid = 15 ;
update sysusers set suid = 15 where suid = 23 ;
update sysusers set suid =  6 where suid = 16 ;
update sysusers set suid =  8 where suid =  3 ;
update sysusers set suid = 12 where suid = 21 ;
update sysusers set suid = 13 where suid = 22 ;
EOF

exit 0
