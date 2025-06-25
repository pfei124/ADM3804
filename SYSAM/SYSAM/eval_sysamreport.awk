#!/bin/gawk -f

# filename : 20250210__DBSPCAR9_sysam_messages.txt
#
## 00:0000:00000:00000:2024/12/14 02:31:19.81 kernel  SySAM: Using licenses from: /DBA/sybase/ASE-16.0SP04PL03/SYSAM-2_0/licenses/licenseserver.lic
## 00:0000:00000:00000:2024/12/14 02:31:20.99 kernel  SySAM: Checked out license for 1 ASE_CORE (2023.06300/permanent/1836 CB44 01F6 C57E).

BEGIN {
  filename = ARGV[1]
  ARGC = 2

  sub(/__/,"_a_",filename)
  split(filename,filenamearray,/_/)
  DATEMARKER = filenamearray[1]
  ASENAME    = filenamearray[3]

#  print filename
#  print DATEMARKER
#  print ASENAME
}

{
  line = $0
  message = ""

  nmax = split(line,linearray)
  for (n=5; n<=nmax; n++){
    message = message " " linearray[n]
  }
  sub(/^ /,"",message)
  datestamp = $1
  timestamp = $2
  source    = $3
  subsystem = $4
  sub(/:$/,"",subsystem)

  printf "%s;%s;%s;%s;%s;%s;%s;\n",ASENAME,DATEMARKER,datestamp,timestamp,source,subsystem,message
}

END {
}
