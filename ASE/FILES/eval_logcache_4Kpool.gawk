#!/bin/gawk -f

# filename : 20250422__DBSISME2_logcache.txt

# IO Size  Wash Size     Config Size  Run Size     APF Percent
# -------- ------------- ------------ ------------ -----------
#     4 Kb        816 Kb      4.00 Mb      4.00 Mb     10
#    32 Kb      61440 Kb   2044.00 Mb   2044.00 Mb     10

## DBSPSIN2     2 Kb      25394 Kb    124.00 Mb    124.00 Mb     10
## DBSPSIN2     4 Kb      61440 Kb    900.00 Mb    900.00 Mb     10
## DBSTCAR9     4 Kb       2048 Kb     10.00 Mb     10.00 Mb     10
## DBSTERS01     4 Kb      61440 Kb   1024.00 Mb   1024.00 Mb     10
## DBSTERS05     4 Kb      61440 Kb   1024.00 Mb   1024.00 Mb     10
## DBSTERS08     4 Kb      61440 Kb   4096.00 Mb   4096.00 Mb     30
## DBSTERS0B     4 Kb      61440 Kb   1024.00 Mb   1024.00 Mb     10
## DBSTERS1     4 Kb      61440 Kb   1024.00 Mb   1024.00 Mb     10

BEGIN {
  filename = ARGV[1]
  filename_tmp = filename
  ARGC = 2
  sub(/__/,"_a_",filename_tmp)
  split(filename_tmp,filenamearray,"_")
  ASENAME = filenamearray[3]

}

/^DBS/ {
  asename          = $1

  iosize           = $2
  iosize_unit      = $3
  key              = asename "_" iosize iosize_unit
  keys[key]        = key

  washsize         = $4
  washsize_unit    = $5
  washsizes[key]   = washsize washsize_unit

  configsize       = $6
  configsize_unit  = $7
  configsizes[key] = configsize configsize_unit

  runsize          = $8
  runsize_unit     = $9
  runsizes[key]    = runsize runsize_unit

  AFPpercent       = $10
  AFPpercents[key] = AFPpercent

  # printf "%s;%s;%i\n",ASENAME,maxmemory,maxmemoryGB
  # printf "%s;%i\n",ASENAME,maxmemoryGB
}

END {
  for ( k in keys ) {
    split(k,keyarray,"_")
    ase  = keyarray[1]
    pool = keyarray[2]
    printf "%s;%s;%s;%s;%s;%s\n",ase,pool,washsizes[k],configsizes[k],runsizes[k],AFPpercents[k]
  }
}
