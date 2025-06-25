#!/bin/gawk -f

BEGIN {
  DATEMARKER = ARGV[1]
  TIMEMARKER = ARGV[2]
  ARGV[1] = "dummy"
  ARGC = 2

  print DATEMARKER
  print TIMEMARKER

  YEAR   = substr(DATEMARKER,1,4)
  MONTH  = substr(DATEMARKER,5,2)
  DAY    = substr(DATEMARKER,7,2)

  HOUR   = substr(TIMEMARKER,1,2)
  MINUTE = substr(TIMEMARKER,3,2)
  SECOND = substr(TIMEMARKER,5,2)
  ZERO   = "00"

  print DAY  "-" MONTH  "-" YEAR
  print HOUR ":" MINUTE ":" SECOND

}

{
   print ""
   timestring1 = YEAR " " MONTH " " DAY " " HOUR " " MINUTE " " SECOND 
   timestring2 = YEAR " " MONTH " " DAY " " HOUR " " ZERO " " ZERO 
   timestring3 = YEAR " " MONTH " " DAY " " ZERO " " ZERO " " ZERO 
   epoch_input = mktime(timestring1)
   epoch_reference1 = mktime(timestring3)
   epoch_reference2 = mktime(timestring2)
   print "Input:         " strftime("%Y%m%d %H:%M:%S", epoch_input)
   print "Input-Day:     " strftime("%Y%m%d %H:%M:%S", epoch_reference1)
   print "Input-Hour:    " strftime("%Y%m%d %H:%M:%S", epoch_reference2)
   epoch1 = epoch_reference1 - 86400
   epoch2 = epoch_reference1 + 86400
   print "Previous Day:  " strftime("%Y%m%d %H:%M:%S", epoch1)
   print "Next Day:      " strftime("%Y%m%d %H:%M:%S", epoch2)
   epoch3 = epoch_reference2 - 10800
   epoch4 = epoch_reference2 + 10800
   print "3 hours back:  " strftime("%Y%m%d %H:%M:%S", epoch3)
   print "3 hours ahead: " strftime("%Y%m%d %H:%M:%S", epoch4)
}

END {
}
