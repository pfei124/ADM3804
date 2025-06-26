#!/bin/gawk -f

## ASENAME:                DBSIODSM
## GNU_HOME:               /DBA/gnu/snk-1.5.8_x64
## PRODUCT_GNU_HOME:       /DBA/sybase/gnu_2.5_SAP
## \set histsize=50

BEGIN {
  filename = ARGV[1]
  filename_tmp = filename
  ARGC = 2
  sub(/__/,"_a_",filename_tmp)
  split(filename_tmp,filenamearray,"_")
  ASE = filenamearray[3]
}

/histsize/ {
  histsize = $2
  sub(/histsize=/,"",histsize)
  histsizes[asename] = histsize
}

/^PRODUCT_GNU/ {
  producthome = $2
  producthomes[asename] = producthome
}

/^GNU/ {
  gnuhome = $2
  gnuhomes[asename] = gnuhome
}

/^ASENAME:/ {
  asename = $2
  asenames[asename] = asename
}

END {
  for ( a in asenames ) {
    printf "%s;%s;%s;%s\n",a,gnuhomes[a],producthomes[a],histsizes[a]
  }
}
