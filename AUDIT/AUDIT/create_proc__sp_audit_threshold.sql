print 'creating procedure sp_audit_threshold in database sybsecurity ...'
;


use sybsecurity
;


if exists (
   select * from sysobjects
   where name like "sp_audit_threshold"
 )
 drop procedure sp_audit_threshold
;


create procedure sp_audit_threshold
as
declare @audit_table_number int
/*
** Select the value of the current audit table
*/
select @audit_table_number = scc.value
from master.dbo.syscurconfigs scc, master.dbo.sysconfigures sc
where sc.config=scc.config and sc.name = "current audit table"
/*
** Set the next audit table to be current.
** When the next audit table is specified as 0,
** the value is automatically set to the next one.
*/
exec sp_configure "current audit table", 0, "with truncate"
/*
** Copy the audit records from the audit table
** that became full into another table.
*/
if @audit_table_number = 1
begin
   insert DAUD001.dbo.audit_data select * from sybsecurity.dbo.sysaudits_01
   truncate table sybsecurity.dbo.sysaudits_01
end
else if @audit_table_number = 2
begin
  insert DAUD001.dbo.audit_data select * from sybsecurity.dbo.sysaudits_02
  truncate table sybsecurity.dbo.sysaudits_02
end
return(0)

go
