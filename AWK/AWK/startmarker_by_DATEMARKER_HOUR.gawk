#!/bin/gawk -f

BEGIN {
  DATEMARKER = ARGV[1]
  HOUR = ARGV[2]
  ARGV[1] = "dummy"
  ARGC = 2

  YEAR  = substr(DATEMARKER,1,4)
  MONTH = substr(DATEMARKER,5,2)
  DAY   = substr(DATEMARKER,7,2)

  ZERO  = "00"
  HOUR  = (HOUR/1) % 24

  if ( MONTH/1 < 1 || MONTH/1 > 12 )    { print "A" ; print "Wrong format" ; print "Aborting!" ; exit 1 }
  if ( DAY/1   < 1 || DAY/1   > 31 )    { print "B" ; print "Wrong format" ; print "Aborting!" ; exit 1 }
  if ( YEAR/1  < 1 || YEAR/1  > 9999 )  { print "C" ; print "Wrong format" ; print "Aborting!" ; exit 1 }

}

{

   timestring = YEAR " " MONTH " " DAY " " HOUR " " ZERO " " ZERO
   epoch      = mktime(timestring)
   epoch1     = epoch - 10800 
   # epoch2     = epoch + 10800 

   STARTMARKER = strftime("%Y%m%d %H:%M:%S", epoch1)
}

END {
   print DATEMARKER " " HOUR " -> " STARTMARKER
}
