#!/bin/gawk -f

## [sybase@gtunxlcw09461:DBSPSME1]/WORK/DUMP/DBSPSME1/wp: nestpwd --get sa
## START   - nestpwd sybase DBSPSME1 started
## INFO    - Getting passwords from passwd file:
## INFO    - Service=DBSPSME1, User=sa, Password=XXXXXXXXXX
## END     - nestpwd ended with RC=0.

BEGIN {
}

/^INFO/ {
  split($3,param3array,"=")
  if ( param3array[1] == "Service" ) {
     passwd = $5
     sub("Password=","",passwd)
  }
}

END {
  print passwd
}
