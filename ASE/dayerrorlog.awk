#!/bin/gawk

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

  nextmarker   = mynext(datemarker) 

  firstline = 0
  lastline  = 0
  numlines  = 0

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
}
