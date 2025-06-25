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

BEGIN {
  PARAM   = ARGV[1]
  ARGV[1] = ARGV[2]
  ARGC = 2
}

/ Run Value:/ {
  runvalue = $4
  runvalues[rsname] = runvalue
}

/ Default Value:/ {
  defaultvalue = $4
  defaultvalues[rsname] = defaultvalue
}

/^RSS/ {
  rsname = $1
  rsnames[rsname] = rsname
}

END {
  for ( r in rsnames ) {
    printf "%s;%s;%s;%s\n",rsnames[r],PARAM,runvalues[r],defaultvalues[r]
  }
}
