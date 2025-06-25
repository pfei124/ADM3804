#!/bin/gawk -f

function isodate(marker) {
   year  = substr(marker,1,4)
   month = substr(marker,5,2)
   day   = substr(marker,7,2)
   returnmarker = year "/" month "/" day
   return returnmarker;
}

function nextdate(marker) { 
   year  = substr(marker,1,4)
   month = substr(marker,5,2)
   day   = substr(marker,7,2)

   nextyear = year
   nextmonth = month
   nextday = day + 1
   
   switch (month) {
   case "02":
       if ( nextyear%4 != 0 ) {
         if  ( nextday > 28 ) { nextday = 1 ; nextmonth = 3 }
       }
       else {
         if  ( nextday > 29 ) { nextday = 1 ; nextmonth = 3 }
       }
       break
   case /0[13578]/:
       if  ( nextday > 31 ) { nextday = 1 ; nextmonth = month + 1 }
       break
   case /0[469]/:
       if  ( nextday > 30 ) { nextday = 1 ; nextmonth = month + 1 }
       break
   case "10":
       if  ( nextday > 31 ) { nextday = 1 ; nextmonth = month + 1 }
       break
   case "11":
       if  ( nextday > 30 ) { nextday = 1 ; nextmonth = month + 1 }
       break
   case "12":
       if  ( nextday > 31 ) { nextday = 1 ; nextmonth = 1 ; nextyear = nextyear + 1 }
       break
   default:
       nextday = day ; nextmonth = month ; nextyear = year 
       break
   }

   if  ( nextday < 10 ) { nextday = "0" nextday/1 }
   if  ( nextmonth < 10 ) { nextmonth = "0" nextmonth/1 }

   if  ( nextyear < 10 ) { 
     nextyear = "000" nextyear/1
   }
   else if ( nextyear < 100 ) { 
     nextyear = "00" nextyear/1
   } 
   else if  ( nextyear < 1000 ) { 
     nextyear = "0" nextyear/1
   }
   else if  ( nextyear > 9999 ) { 
     nextyear = 9999 
   }

   nextmarker = nextyear nextmonth nextday
   return nextmarker
}

function prevdate(marker) { 
   year  = substr(marker,1,4)
   month = substr(marker,5,2)
   day   = substr(marker,7,2)

   prevyear = year
   prevmonth = month
   prevday = day - 1

   if  ( prevday < 10 ) { prevday = "0" prevday/1 }
   if  ( prevmonth < 10 ) { prevmonth = "0" prevmonth/1 }

   if ( prevday == "00" ) {
      prevmonth = month/1 - 1
      if  ( prevmonth == 0 ) { prevmonth = "12" ; prevyear = year/1 - 1 }
      if  ( prevmonth < 10 ) { prevmonth = "0" prevmonth/1 }
      switch (prevmonth) {
      case "02":
          if ( prevyear%4 != 0 ) { prevday = 28 } else { prevday = 29 }
          break
      case /0[13578]/:
          prevday   = 31
          break
      case /0[46]/:
          prevday = 30
          break
      case "10":
          prevday = 31
          break
      case "11":
          prevday = 30
          break
      case "12":
          prevday = 31
          break
      default:
          break
      }

   }

   prevmarker = prevyear prevmonth prevday
   return prevmarker
}


BEGIN {
  filename   = ARGV[1]
  datemarker = ARGV[2]
  hourmarker = ARGV[3]
  ARGV[2] = ARGV[1]
  ARGC = 3

  starthour1 = (hourmarker - 3)
  endhour1   = (hourmarker + 3)
  starthour  = (hourmarker - 3 + 24)%24
  endhour    = (hourmarker + 3 + 24)%24

  if ( starthour1 == starthour ) { startdate = datemarker } else { startdate = prevdate(datemarker) }
  if ( endhour1   == endhour   ) { enddate   = datemarker } else { enddate   = nextdate(datemarker) }

## DEBUG
##  print "analysing file    " filename1
##  print "hourmarker        " hourmarker
##  print "starthour         " starthour 
##  print "starthour1        " starthour1
##  print "endhour           " endhour 
##  print "endhour1          " endhour1
##  print "start(date,hour)  " startdate  " " starthour
##  print "end(date,hour)    " enddate    " " endhour
##  print "prevdate          " prevdate(datemarker)
##  print "date              " datemarker
##  print "nextdate          " nextdate(datemarker)

  startnr  = 0
  endnr    = 0
  numlines = 0
}

{
  if ( NR == FNR && ( startnr == 0 || endnr == 0 ) ) {
    # first scan
    line = $0
    numlines = numlines + 1
    split(line,linearray," ")
    split(linearray[1],datefieldarray,":")
    date = datefieldarray[5]
    gsub("/","",date)

    print date
    if ( date == startdate && startnr == 0 ) {
      startnr = NR
    }
    if ( date == enddate && endnr == 0 ) {
      endnr = NR
    }
  }
  if ( NR != FNR ) {
    # second scan
    if ( startnr == 0 ) { startnr = numlines + 1 }
    if ( endnr == 0 ) { endnr = numlines }
    if ( FNR >= startnr && FNR < endnr ) { print $0 }
  }
}

END {
}
