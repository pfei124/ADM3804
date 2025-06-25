print 'creating procedure sp_audit_deletedata in database DAUD001 ...'
;


use DAUD001
;


if exists (
   select * from sysobjects
   where name like "sp_audit_deletedata"
 )
 drop procedure sp_audit_deletedata
;

create procedure sp_audit_deletedata
as
-- Delete all data
select count(*) from audit_data where eventtime < dateadd(day, -1 , getdate ())
--delete from audit_data where eventtime < dateadd(day, -1 , getdate ())
truncate table audit_data
select count(*) from audit_data where eventtime < dateadd(day, -1 , getdate ())
return(0)

go
