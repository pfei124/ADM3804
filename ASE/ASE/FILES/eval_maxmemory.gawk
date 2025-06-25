#!/bin/gawk -f

## Parameter Name   Default     Memory Used   Config Value   Run Value    Unit             Type
## ---------------- ----------- ------------- -------------- ------------ ---------------- -------
## max memory            229376    10000000        5000000        5000000 memory pages(2k) dynamic
##
##(1 row affected, return status = 0)

BEGIN {
  filename = ARGV[1]
  filename_tmp = filename
  ARGC = 2
  sub(/__/,"_a_",filename_tmp)
  split(filename_tmp,filenamearray,"_")
  ASENAME = filenamearray[3]

}

/^ max memory/ {
  maxmemory = $4
  maxmemoryGB = maxmemory / 512 / 1024
  # printf "%s;%s;%i\n",ASENAME,maxmemory,maxmemoryGB
  printf "%s;%i\n",ASENAME,maxmemoryGB
}

END {
}
