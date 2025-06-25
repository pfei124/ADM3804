#!/bin/gawk -f

## ASEname                        total space alloc (GB) total data used (GB)
## ------------------------------ ---------------------- --------------------
## DBSTGHB1                                         2599                  627
##
##(13 rows affected, return status = 0)
## ASEname                        total space alloc (GB) total data used (GB)
## ------------------------------ ---------------------- --------------------
## DBSTODS0                                            8                    3

BEGIN {
  printf "ASEname;AllocatedSpaceInGB;UsedDataSpaceInGB;\n"
}

/^ DBS/ {
  servername = $1
  spacealloc = $2
  spaceused  = $3

  printf "%s;%s;%s;\n",servername,spacealloc,spaceused
}

END {
}
