set nocount on ;
select 
ASEname  = convert(char(30),@@servername),
HOSTname = convert(char(30),ASEHostName()),
Version  = convert(char(51),@@version) 
;
