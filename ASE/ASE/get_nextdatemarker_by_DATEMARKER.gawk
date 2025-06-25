#!/bin/gawk -f

BEGIN {
  DATEMARKER = ARGV[1]
  ARGV[1] = "dummy"
  ARGC = 2

  YEAR  = substr(DATEMARKER,1,4)
  MONTH = substr(DATEMARKER,5,2)
  DAY   = substr(DATEMARKER,7,2)

  year  = YEAR/1
  month = MONTH/1
  day   = DAY/1

  if ( month < 1 || month > 12 ) { print "Wrong format" ; print "Aborting!" ; exit 1 }
  if ( day < 1 || day > 31 )     { print "Wrong format" ; print "Aborting!" ; exit 1 }
  if ( year < 1 || day > 9999 )  { print "Wrong format" ; print "Aborting!" ; exit 1 }

}

{

   # check valid date
   switch (MONTH) {
   case "02":
       if ( (nextyear%4 == 0) || (nextyear%100 == 0 && nextyear%400 == 0) )  {
       # if (year%4 == 0) {
       # leap year
          if ( day > 29 ) { print "Wrong date" ; print "Aborting!" ; exit 1 }
       }
       else {
       # no leap year
          if ( day > 28 ) { print "Wrong date" ; print "Aborting!" ; exit 1 }
       }
      break
   case /0[469]/:
      if ( day > 30 ) { print "Wrong date" ; print "Aborting!" ; exit 1 }
      break
   case "10":
      if ( day > 31 ) { print "Wrong date" ; print "Aborting!" ; exit 1 }
      break
   case "11":
      if ( day > 30 ) { print "Wrong date" ; print "Aborting!" ; exit 1 }
      break
   case "12":
      if ( day > 31 ) { print "Wrong date" ; print "Aborting!" ; exit 1 }
      break
   }

   nextyear  = year
   nextmonth = month
   nextday   = day + 1

   switch (MONTH) {
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
       nextday = day + 1 ; nextmonth = month ; nextyear = year 
       break
   }

   NEXTYEAR  = nextyear/1
   NEXTMONTH = nextmonth/1
   NEXTDAY   = nextday/1

   if  ( nextday < 10 ) { NEXTDAY = "0" nextday/1 }
   if  ( nextmonth < 10 ) { NEXTMONTH = "0" nextmonth/1 }

   if  ( nextyear < 10 ) { 
     NEXTYEAR = "000" nextyear/1
   }
   else if ( nextyear < 100 ) { 
     NEXTYEAR = "00" nextyear/1
   } 
   else if  ( nextyear < 1000 ) { 
     NEXTYEAR = "0" nextyear/1
   }
   else if  ( nextyear > 9999 ) { 
     NEXTYEAR = 9999 
   }

   NEXTMARKER = NEXTYEAR NEXTMONTH NEXTDAY
}

END {
   print DATEMARKER " -> " NEXTMARKER
}
