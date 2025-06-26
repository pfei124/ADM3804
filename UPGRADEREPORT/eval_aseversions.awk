#!/bin/gawk -f

## ASEname                        HOSTname                       Version
## ------------------------------ ------------------------------ ---------------------------------------------------
## DBSTERW8                       gtunxlnv11878                  Adaptive Server Enterprise/16.0 SP04 PL04/EBF 30650
## ASEname                        HOSTname                       Version
## ------------------------------ ------------------------------ ---------------------------------------------------
## DBSTGHB1                       degtlun5440                    Adaptive Server Enterprise/16.0 SP04 PL03/EBF 30399


BEGIN {
    printf "ASEname;HOSTname;Version;EBF;\n"
}

{
  if ( NR % 3 == 0 ) {
    servername = $1
    hostname = $2
    mainversion = $5
    sub(/Enterprise\//,"",mainversion)
    servicepack = $6
    patchlevel  = $7
    sub(/\/EBF/,"",patchlevel)
    ebf = "EBF" $8

    printf "%s;%s;%s %s %s;%s;\n",servername,hostname,mainversion,servicepack,patchlevel,ebf
  }
}

END {
}
