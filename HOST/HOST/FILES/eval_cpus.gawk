#!/bin/gawk -f

BEGIN {
  filename = ARGV[1]
  filename_tmp = filename
  ARGC = 2
  sub(/__/,"_a_",filename_tmp)
  split(filename_tmp,filenamearray,"_")
  ASENAME = filenamearray[3]

}

{
  cpus = $1
  printf "%s;%s\n",ASENAME,cpus
}

END {
}
