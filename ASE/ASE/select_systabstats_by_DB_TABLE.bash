#!/bin/bash
DBNAME="$1"
TABNAME="$2"

# DATEMARKER=$(date '+%Y%m%d')
## indid:                             6
## id:                        986483562
## activestatid:                      0
## indexheight:                       4
## leafcnt:                     3108006
## pagecnt:                           0
## rowcnt:                     0.000000
## forwrowcnt:                 0.000000
## delrowcnt:                  0.000000
## dpagecrcnt:         908229537.000000
## ipagecrcnt:           3055956.000000
## drowcrcnt:          911020581.000000
## oamapgcnt:                         0
## extent0pgcnt:                    310
## datarowsize:                0.000000
## leafrowsize:                6.087202
## status:                            0
## plljoindegree:                     0
## rslastoam:                         0
## rslastpage:                        0
## frlastoam:                         0
## frlastpage:                        0
## conopt_thld:                       0
## plldegree:                         0
## emptypgcnt:                        0
## partitionid:               986483562
## warmcachepgcnt:                    0
## statmoddate:     Jun 16 2025 10:10PM
## unusedpgcnt:                       0
## oampagecnt:                        0
## pioclmdata:                 0.000000
## pioclmindex:                0.000000
## piocsmdata:                 0.000000
## piocsmindex:                0.000000


s+ <<EOF
use ${DBNAME}
;
select
convert(char(40),object_name(id)) name,
indid,
indexheight,
leafcnt,
convert(numeric(15,0),rowcnt) rowcnt,
convert(numeric(10,0),dpagecrcnt) dpagecrcnt,
convert(numeric(10,0),ipagecrcnt) ipagecrcnt,
convert(numeric(10,0),drowcrcnt) drowcrcnt,
convert(numeric(6,0),leafrowsize) leafrowsize,
convert(char(8),statmoddate,112) moddate,
convert(char(8),statmoddate,108) modtime
from systabstats 
where id = object_id ("$TABNAME")
;
EOF

exit 0
