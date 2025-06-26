#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF | tee ${DATEMARKER}__${SRV_SID}_dbccprocs.txt
declare @DBname varchar(60)
select  @DBname = "dbccdb"
declare @ASEname varchar(60)
select  @ASEname = @@servername

if exists (select * from sysdatabases where name = @DBname)
begin
  use @DBname
end
else
begin
  print "There exists no database '%1!' in ASE '%2!'!", @DBname, @ASEname
  select syb_quit()
end
;

declare @DBname varchar(60)
select  @DBname = "dbccdb"
select convert(char(30),@DBname) as "database", convert(char(60),name) name,convert(varchar(8),crdate,112) crdate,convert(varchar(8),crdate,108) crtime
from sysobjects
where type = "P"
order by crdate,crtime
;
EOF

exit 0
