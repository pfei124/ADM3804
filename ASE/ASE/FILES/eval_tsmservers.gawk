#!/bin/gawk -f

#  20250424__DBSPGHB1_tsmservers.txt

## STATSM122D
## TSM119D
## TSM122D

BEGIN {
  filename = ARGV[1]
  ARGC = 2
  sub(/__/,"_a_",filename)
  split(filename,filenamearray,"_")
  ASENAME = filenamearray[3]

}

{
  if ( ! tsmservers[ASENAME] ) { tsmservers[ASENAME] = $1 } else { tsmservers[ASENAME] = tsmservers[ASENAME] ";" $1  }
}

END {
  printf "%s;%s\n",ASENAME,tsmservers[ASENAME]
}
