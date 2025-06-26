#!/bin/gawk -f

## FRAME   - Program extension is set to WP.
##           Searching for [checksrv_wp] sections for program parameter.
## INFO    - Database : model is excluded. Skipping.
## INFO    - Database : sybsystemdb is excluded. Skipping.
## INFO    - Database : tempdb2 is excluded. Skipping.
## 06.03.2025 17:17:00: checksrv sybase sybdb DBSPERS0D started:
## INFO    - checkstorage for database DERSCMP
## INFO    - Checking DERSCMP: Logical pagesize is 4096 bytes.
##           DBCC CHECKSTORAGE for database 'DERSCMP' sequence 37 completed at Mar  6 2025  5:17PM. 0 faults and 0 suspect conditions were located. 0 checks were aborted. You should investigate the recorded faults, and plan a course of action that will correct them.
## INFO    - checkverify for database DERSCMP
## INFO    - Verifying faults for 'DERSCMP'.
##           DBCC CHECKVERIFY for database 'DERSCMP' sequence 37 completed at Mar  6 2025  5:17PM. 0 suspect conditions considered, 0 identified as faults, 0 identified as harmless, and 0 could not be checked. 0 objects could not be checked.
## INFO    - checkcatalog for database DERSCMP
## INFO    - Checking DERSCMP: Logical pagesize is 4096 bytes.
##           The following segments have been defined for database 20 (database name DERSCMP).
##           virtual device number    virtual start addr     size (logical pages)      segments
##           ---------------------    --------------------    ----------------------    --------------------
##                              36                       0                   2621440    0, 1
##                              37                       0                    262144    2
##           DBCC execution completed. If DBCC printed error messages, contact a user with System Administrator (SA) role.
## RESULT  - Checksrv finished without errors
## 06.03.2025 17:17:27: checksrv for sybase ended with RC=0.

BEGIN {
  filename = ARGV[1]
  ARGC = 2
}

/^RESULT/ {
  result = $0
}

/DBCC CHECKVERIFY for database/ {
  VER_suspect_conditions   = $14
  VER_faulty_conditions    = $18
  VER_harmless_conditions  = $22
  VER_unchecked_conditions = $27
  VER_objects_not_checked  = $32
  VER_database             = $5
}

/DBCC CHECKSTORAGE for database/ {
  STO_suspect_conditions  = $17
  STO_faults              = $14
  STO_aborted_checks      = $22
  STO_database            = $5
}


END {
  printf "Database: %s\n", STO_database
  printf "\n"
  printf "File analysed:            %s\n",filename
  printf "Faults located:           %s\n",STO_faults
  printf "Suspect conditions found: %s\n",STO_suspect_conditions
  printf "\n"
  printf "Result: %s\n", result
  printf "\n"
}
