#!/bin/gawk

function myahead(marker) {
  yr          = substr(marker,1,4)
  mo          = substr(marker,5,2)
  dy          = substr(marker,7,2)
  hr          = substr(marker,9,2)
  zero        = "00"
  timestring  = yr " " mo " " dy " " hr " " zero " " zero
  epoch       = mktime(timestring) + 10800
  amarker     = strftime("%Y%m%d%H", epoch)
  return amarker
}

function myback(marker) {
  yr          = substr(marker,1,4)
  mo          = substr(marker,5,2)
  dy          = substr(marker,7,2)
  hr          = substr(marker,9,2)
  zero        = "00"
  timestring  = yr " " mo " " dy " " hr " " zero " " zero
  epoch       = mktime(timestring) - 10800
  bmarker     = strftime("%Y%m%d%H", epoch)
  return bmarker
}


BEGIN {
  filename     = ARGV[1]
  datemarker   = ARGV[2]
  hour         = ARGV[3]
  ARGV[2]      = ARGV[1]
  ARGC         = 3

  year         = substr(datemarker,1,4)
  month        = substr(datemarker,5,2)
  day          = substr(datemarker,7,2)

  fullmarker   = datemarker hour

  aheadfullmarker = myahead(fullmarker)
  aheadmarker  = substr(aheadfullmarker,1,8)
  aheadhour    = substr(aheadfullmarker,9,2)
  backfullmarker = myback(fullmarker)
  backmarker   = substr(backfullmarker,1,8)
  backhour     = substr(backfullmarker,9,2)

  firstline  = 0
  lastline   = 0
  lastpassed = 0
  numlines   = 0

}

{
  if ( NR == FNR && ( firstline == 0 || lastline == 0 || lastpassed == 0) ) {
    # first scan
    line = $0
    numlines = numlines + 1
    split(line,linearray," ")
    split(linearray[2],timefieldarray,":")
    loghour = timefieldarray[1]

    split(linearray[1],datefieldarray,":")
    logdate = datefieldarray[5]
    gsub("/","",logdate)

    logfullmarker = logdate loghour

    if ( logfullmarker >= backfullmarker  && firstline == 0 ) {
      firstline = NR
    }
    if ( logfullmarker < aheadfullmarker ) {
      lastline = NR
    }
    else {
      lastpassed = 1
    }
  }
  if ( NR != FNR ) {
    # second scan

    # special cases
    if ( firstline == 0 ) { firstline = numlines + 1 } # date was not found, print nothing
    if ( lastline == 0 )  { lastline = numlines } # no match for nextmarker, ergo current day selected

    # extract daylog
    if ( FNR >= firstline && FNR < lastline ) { print $0 }
#
  }
}

END {
}
