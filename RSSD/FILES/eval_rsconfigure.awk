#!/bin/gawk -f


## Config Name                Config Value           Run Value
## -------------------------- ---------------------- --------------------------
## audit_dest                 log                    log
## audit_enable               off                    off
## block_size                 16                     16
## byte_order                 65536                  65536
##...
## use_ssl                    off                    off
## varchar_truncation         off                    off
##
##(return status = 0)


BEGIN {
  filename = ARGV[1]
  ARGC = 2

  sub("__","_a_",filename)
  split(filename,filenamearray,"_")

  DATEMARKER = filenamearray[1]
  RSNAME     = filenamearray[3]

}

/^ [a-z]/ {

  configparam = $1
  configvalue = $2
  runvalue    = $3

  printf "%s;%s;%s;%s\n",RSNAME,configparam,configvalue,runvalue
}

END {
}
