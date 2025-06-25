#!/bin/gawk -f

## 00:0009:00000:00012:2025/05/26 12:54:55.17 server  Error: 925, Severity: 16, State: 1
## 00:0009:00000:00012:2025/05/26 12:54:55.17 server  Maximum number of used databases for each query has been exceeded. The maximum allowed is 8.
## 00:0009:00000:00012:2025/05/26 13:09:55.17 server  Error: 925, Severity: 16, State: 1
## 00:0009:00000:00012:2025/05/26 13:09:55.17 server  Maximum number of used databases for each query has been exceeded. The maximum allowed is 8.
## 00:0009:00000:00012:2025/05/26 13:22:55.17 kernel  Begin processing to generate RSA keypair.
## 00:0009:00000:00012:2025/05/26 13:22:55.20 kernel  Completed processing to generate RSA keypair.
## 00:0002:00000:00000:2025/05/26 13:22:55.21 kernel  Begin processing to generate RSA keypair.

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
  NANO   = "00"

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
   print "Input:         " strftime("%Y/%m/%d %H:%M:%S.00", epoch_input)
   print "Input-Day:     " strftime("%Y/%m/%d %H:%M:%S.00", epoch_reference1)
   print "Input-Hour:    " strftime("%Y/%m/%d %H:%M:%S.00", epoch_reference2)
   epoch1 = epoch_reference1 - 86400
   epoch2 = epoch_reference1 + 86400
   print "Previous Day:  " strftime("%Y/%m/%d %H:%M:%S.00", epoch1)
   print "Next Day:      " strftime("%Y/%m/%d %H:%M:%S.00", epoch2)
   epoch3 = epoch_reference2 - 10800
   epoch4 = epoch_reference2 + 10800
   print "3 hours back:  " strftime("%Y/%m/%d %H:%M:%S.00", epoch3)
   print "3 hours ahead: " strftime("%Y/%m/%d %H:%M:%S.00", epoch4)
}

END {
}
