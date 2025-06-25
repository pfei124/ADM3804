#!/bin/gawk -f

## RSSTARI3 Configuration: mem_distribution_exec
## RSSTARI3 Config Value:  5
## RSSTARI3 Run Value:     5
## RSSTARI3 Default Value: 5
## RSSTARI3 Legal Values:  range: 0,100
## RSSTARI3 Datatype:      integer
## RSSTARI3 Status:        Restart not required
## --
## RSSTSIN2 Configuration: mem_distribution_exec
## RSSTSIN2 Config Value:  5
## RSSTSIN2 Run Value:     5
## RSSTSIN2 Default Value: 5
## RSSTSIN2 Legal Values:  range: 0,100
## RSSTSIN2 Datatype:      integer
## RSSTSIN2 Status:        Restart not required

function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s)  { return rtrim(ltrim(s)); }

BEGIN {
  PARAM   = ARGV[1]
  ARGV[1] = ARGV[2]
  ARGC = 2
}

/ Status:/ {
  imax = split($0,linearray,/\s/)
  statusvalue = ""
  for ( i=3; i<=imax; i++) {
    statusvalue = statusvalue " " linearray[i]
  }
  statusvalues[rsname] = trim(statusvalue)
}

/ Datatype:/ {
  typevalue = $3
  typevalues[rsname] = typevalue
}

/^RSS/ {
  rsname = $1
  rsnames[rsname] = rsname
}

END {
  for ( r in rsnames ) {
    printf "%s;%s;%s;%s\n",rsnames[r],PARAM,typevalues[r],statusvalues[r]
  }
}
