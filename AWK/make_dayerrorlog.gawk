#!/bin/gawk -f

## 00:0009:00000:00012:2025/05/26 12:54:55.17 server  Error: 925, Severity: 16, State: 1
## 00:0009:00000:00012:2025/05/26 12:54:55.17 server  Maximum number of used databases for each query has been exceeded. The maximum allowed is 8.
## 00:0009:00000:00012:2025/05/26 13:09:55.17 server  Error: 925, Severity: 16, State: 1
## 00:0009:00000:00012:2025/05/26 13:09:55.17 server  Maximum number of used databases for each query has been exceeded. The maximum allowed is 8.
## 00:0009:00000:00012:2025/05/26 13:22:55.17 kernel  Begin processing to generate RSA keypair.
## 00:0009:00000:00012:2025/05/26 13:22:55.20 kernel  Completed processing to generate RSA keypair.
## 00:0002:00000:00000:2025/05/26 13:22:55.21 kernel  Begin processing to generate RSA keypair.

function mynext(marker) {
  yr         = substr(marker,1,4)
  mo         = substr(marker,5,2)
  dy         = substr(marker,7,2)
  zero       = "00"
  timestring = yr " " mo " " dy " " zero " " zero " " zero
  epoch      = mktime(timestring) + 86400
  newmarker  = strftime("%Y%m%d", epoch)
  return newmarker
}


BEGIN {
  filename     = ARGV[1]
  datemarker   = ARGV[2]
  ARGV[2]      = ARGV[1]
  ARGC         = 3

  year         = substr(datemarker,1,4)
  month        = substr(datemarker,5,2)
  day          = substr(datemarker,7,2)
  if ( month/1 < 1    || month/1 > 12 )    { print "Wrong date" ; print "Aborting!" ; exit 1 }
  if ( day/1   < 1    || day/1   > 31 )    { print "Wrong date" ; print "Aborting!" ; exit 1 }
  if ( year/1  < 1970 || year/1  > 9999 )  { print "Wrong date" ; print "Aborting!" ; exit 1 }

  nextmarker   = mynext(datemarker) 

  nextyear     = substr(nextmarker,1,4)
  nextmonth    = substr(nextmarker,5,2)
  nextday      = substr(nextmarker,7,2)

  firstline = 0
  lastline  = 0
  numlines  = 0

  ## debug
  # print "analysing file: ",filename
  # print "datemarker:     ",datemarker 
  # print "nextmarker:     ",nextmarker
}

{
  if ( NR == FNR && ( firstline == 0 || lastline == 0 ) ) {
    # first scan
    line = $0
    numlines = numlines + 1
    split(line,linearray," ")
    split(linearray[1],datefieldarray,":")
    date = datefieldarray[5]
    gsub("/","",date)
    ## debug
    # if ( date == datemarker ) { print NR ":" date "," datemarker "," nextmarker "," firstline "," lastline }

    if ( date == datemarker && firstline == 0 ) {
      firstline = NR
    }
    if ( date == nextmarker && lastline == 0 ) {
      lastline = NR
    }
  }
  if ( NR != FNR ) {
    # second scan

    # special cases
    if ( firstline == 0 ) { firstline = numlines + 1 } # date was not found, print nothing
    if ( lastline == 0 )  { lastline = numlines } # no match for nextmarker, ergo current day selected

    # extract daylog
    if ( FNR >= firstline && FNR < lastline ) { print $0 }

  }
}

END {
  ## debug
  # print "firstline:      ",firstline
  # print "lastline:       ",lastline
}
