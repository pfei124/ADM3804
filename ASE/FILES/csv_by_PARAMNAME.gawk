#!/bin/gawk -f

BEGIN {
  NUMPARTS = ARGV[1]
  PARAM    = ARGV[2]
  ARGV[1] = ARGV[3]
  ARGC = 2
}

{
  ASE = $1
  printf "%s;%s;%s\n",ASE,PARAM,$(NUMPARTS+5)
}

END {
}
