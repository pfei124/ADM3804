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
  memory = $1
  memoryvalue = substr(memory, 1, length(memory)-1)
  memoryscale = substr(memory, length(memory))
  if ( memoryscale == "T" ) { memoryvalue = memoryvalue * 1024 }
  printf "%s;%s\n",ASENAME,memoryvalue
}

END {
}
