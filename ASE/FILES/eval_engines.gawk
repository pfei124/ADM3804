#!/bin/gawk -f

## Parameter Name     Default     Memory Used   Config Value   Run Value    Unit   Type
## ------------------ ----------- ------------- -------------- ------------ ------ ------
## max online engines           1       63936             18             18 number static
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

/^ max online engines/ {
  usedengines = $7
  # printf "%s;%s;%i\n",ASENAME,maxmemory,maxmemoryGB
  printf "%s;%i\n",ASENAME,usedengines
}

END {
}
