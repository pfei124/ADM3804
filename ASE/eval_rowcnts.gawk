#!/bin/gawk -f

BEGIN {
  filename = ARGV[1]
  ARGV[2] = filename
  ARGC = 3

  numlines = 0
}

{
  if ( NR == FNR ) {
    # first pass
    numlines = NR
  }
  if ( NR != FNR ) {
    # second pass
    if ( FNR > 2 && FNR <= numlines - 2 ) {
      printf "%s;%s\n",$1,$2
    }
  }
}

END {
}
