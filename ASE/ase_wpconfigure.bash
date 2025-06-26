#!/bin/bash

DATEMARKER=$(date '+%Y%m%d')

s+ <<EOF | tee ${DATEMARKER}__${SRV_SID}_wpconfigure.txt
sp_configure "AQT baseline optgoal" ; -m vert
sp_configure "AQT baseline optlevel" ; -m vert
sp_configure "CIPC large message pool size" ; -m vert
sp_configure "CIPC large message pool size" ; -m vert
sp_configure "CIPC regular message pool size" ; -m vert
sp_configure "CIPC regular message pool size" ; -m vert
sp_configure "DMA object pool size" ; -m vert
sp_configure "DMA object pool size" ; -m vert
sp_configure "FIPS login password encryption" ; -m vert
sp_configure "FM Enabled" ; -m vert
sp_configure "HADR connect timeout" ; -m vert
sp_configure "HADR distinct server name" ; -m vert
sp_configure "HADR login stall time" ; -m vert
sp_configure "HADR mode" ; -m vert
sp_configure "HADR primary check frequency" ; -m vert
sp_configure "HADR primary wait time" ; -m vert
sp_configure "HADR remote query timeout" ; -m vert
sp_configure "HCB index auto tuning" ; -m vert
sp_configure "HCB index memory pool size" ; -m vert
sp_configure "HCB index tuning interval" ; -m vert
sp_configure "LFB memory size" ; -m vert
sp_configure "NVCache Lazy Cleaner Pool Size" ; -m vert
sp_configure "SQL Perfmon Integration" ; -m vert
sp_configure "SQL batch capture" ; -m vert
sp_configure "abstract plan cache" ; -m vert
sp_configure "abstract plan dump" ; -m vert
sp_configure "abstract plan dynamic replace" ; -m vert
sp_configure "abstract plan load" ; -m vert
sp_configure "abstract plan replace" ; -m vert
sp_configure "abstract plan sharing" ; -m vert
sp_configure "additional network memory" ; -m vert
sp_configure "aggressive task stealing" ; -m vert
sp_configure "allocate max shared memory" ; -m vert
sp_configure "allow backward scans" ; -m vert
sp_configure "allow kerberos null password" ; -m vert
sp_configure "allow memory grow at startup" ; -m vert
sp_configure "allow nested triggers" ; -m vert
sp_configure "allow procedure grouping" ; -m vert
sp_configure "allow remote access" ; -m vert
sp_configure "allow resource limits" ; -m vert
sp_configure "allow sendmsg" ; -m vert
sp_configure "allow sql server async i/o" ; -m vert
sp_configure "allow statement rollback" ; -m vert
sp_configure "allow updates to system tables" ; -m vert
sp_configure "async poll timeout" ; -m vert
sp_configure "audit queue size" ; -m vert
sp_configure "audit trail type" ; -m vert
sp_configure "auditing" ; -m vert
sp_configure "auto query tuning" ; -m vert
sp_configure "automatic cluster takeover" ; -m vert
sp_configure "automatic master key access" ; -m vert
sp_configure "autotune rule history depth" ; -m vert
sp_configure "average cap size" ; -m vert
sp_configure "bind backupserver address" ; -m vert
sp_configure "builtin date strings" ; -m vert
sp_configure "bulk insert validation" ; -m vert
sp_configure "caps per ccb" ; -m vert
sp_configure "capture compression statistics" ; -m vert
sp_configure "capture missing statistics" ; -m vert
sp_configure "check password for digit" ; -m vert
sp_configure "cis bulk insert array size" ; -m vert
sp_configure "cis bulk insert batch size" ; -m vert
sp_configure "cis connect timeout" ; -m vert
sp_configure "cis cursor rows" ; -m vert
sp_configure "cis idle connection timeout" ; -m vert
sp_configure "cis packet size" ; -m vert
sp_configure "cis pushdown for HANA" ; -m vert
sp_configure "cis rpc handling" ; -m vert
sp_configure "cluster heartbeat interval" ; -m vert
sp_configure "cluster heartbeat retries" ; -m vert
sp_configure "cluster redundancy level" ; -m vert
sp_configure "cluster vote timeout" ; -m vert
sp_configure "column default cache size" ; -m vert
sp_configure "compression info pool size" ; -m vert
sp_configure "compression memory size" ; -m vert
sp_configure "config file version" ; -m vert
sp_configure "configuration file" ; -m vert
sp_configure "cost of a cpu unit" ; -m vert
sp_configure "cost of a logical io" ; -m vert
sp_configure "cost of a physical io" ; -m vert
sp_configure "cpu accounting flush interval" ; -m vert
sp_configure "cpu grace time" ; -m vert
sp_configure "curread change w/ open cursors" ; -m vert
sp_configure "current audit table" ; -m vert
sp_configure "deadlock checking period" ; -m vert
sp_configure "deadlock pipe active" ; -m vert
sp_configure "deadlock pipe max messages" ; -m vert
sp_configure "deadlock retries" ; -m vert
sp_configure "decompression row threshold" ; -m vert
sp_configure "default character set id" ; -m vert
sp_configure "default database size" ; -m vert
sp_configure "default exp_row_size percent" ; -m vert
sp_configure "default fill factor percent" ; -m vert
sp_configure "default language id" ; -m vert
sp_configure "default network packet size" ; -m vert
sp_configure "default sortorder id" ; -m vert
sp_configure "default textsize" ; -m vert
sp_configure "default unicode sortorder" ; -m vert
sp_configure "default xml sortorder" ; -m vert
sp_configure "deferred name resolution" ; -m vert
sp_configure "disable character set conversions" ; -m vert
sp_configure "disable disk mirroring" ; -m vert
sp_configure "disable jsagent core dump" ; -m vert
sp_configure "disable varbinary truncation" ; -m vert
sp_configure "disk i/o structures" ; -m vert
sp_configure "dsam memory size" ; -m vert
sp_configure "dtm detach timeout period" ; -m vert
sp_configure "dtm lock timeout period" ; -m vert
sp_configure "dump history filename" ; -m vert
sp_configure "dump on conditions" ; -m vert
sp_configure "dynamic SQL plan pinning" ; -m vert
sp_configure "dynamic allocation on demand" ; -m vert
sp_configure "early row send increment" ; -m vert
sp_configure "enable AQT compatibility mode" ; -m vert
sp_configure "enable Abstract Plan warnings" ; -m vert
sp_configure "enable DTM" ; -m vert
sp_configure "enable HA" ; -m vert
sp_configure "enable HCB index" ; -m vert
sp_configure "enable HugePages" ; -m vert
sp_configure "enable ISM" ; -m vert
sp_configure "enable LFB index" ; -m vert
sp_configure "enable async database init" ; -m vert
sp_configure "enable backupserver HA" ; -m vert
sp_configure "enable buffered io for load" ; -m vert
sp_configure "enable bulk inserts" ; -m vert
sp_configure "enable cis" ; -m vert
sp_configure "enable compatibility mode" ; -m vert
sp_configure "enable compression" ; -m vert
sp_configure "enable concurrent dump tran" ; -m vert
sp_configure "enable console logging" ; -m vert
sp_configure "enable deferred parallel" ; -m vert
sp_configure "enable delta dump tran" ; -m vert
sp_configure "enable dump history" ; -m vert
sp_configure "enable encrypted columns" ; -m vert
sp_configure "enable file access" ; -m vert
sp_configure "enable full-text search" ; -m vert
sp_configure "enable functionality group" ; -m vert
sp_configure "enable granular permissions" ; -m vert
sp_configure "enable hbc" ; -m vert
sp_configure "enable housekeeper GC" ; -m vert
sp_configure "enable hp posix async i/o" ; -m vert
sp_configure "enable i/o fencing" ; -m vert
sp_configure "enable in-memory row storage" ; -m vert
sp_configure "enable inline default sharing" ; -m vert
sp_configure "enable java" ; -m vert
sp_configure "enable job scheduler" ; -m vert
sp_configure "enable js restart logging" ; -m vert
sp_configure "enable large chunk elc" ; -m vert
sp_configure "enable large pool for load" ; -m vert
sp_configure "enable ldap user auth" ; -m vert
sp_configure "enable lightweight rvm" ; -m vert
sp_configure "enable literal autoparam" ; -m vert
sp_configure "enable lock remastering" ; -m vert
sp_configure "enable logins during recovery" ; -m vert
sp_configure "enable mem scale" ; -m vert
sp_configure "enable merge join" ; -m vert
sp_configure "enable metrics capture" ; -m vert
sp_configure "enable monitoring" ; -m vert
sp_configure "enable pam user auth" ; -m vert
sp_configure "enable pci" ; -m vert
sp_configure "enable permissive unicode" ; -m vert
sp_configure "enable plan sharing" ; -m vert
sp_configure "enable predicated privileges" ; -m vert
sp_configure "enable query tuning mem limit" ; -m vert
sp_configure "enable query tuning time limit" ; -m vert
sp_configure "enable rapidlog" ; -m vert
sp_configure "enable rapidtimer" ; -m vert
sp_configure "enable real time messaging" ; -m vert
sp_configure "enable rep agent threads" ; -m vert
sp_configure "enable resolve as owner" ; -m vert
sp_configure "enable row level access" ; -m vert
sp_configure "enable select into in tran" ; -m vert
sp_configure "enable semantic partitioning" ; -m vert
sp_configure "enable snmp" ; -m vert
sp_configure "enable sort-merge join and JTC" ; -m vert
sp_configure "enable spinlock monitoring" ; -m vert
sp_configure "enable sql debugger" ; -m vert
sp_configure "enable ssl" ; -m vert
sp_configure "enable sticky statistics" ; -m vert
sp_configure "enable stmt cache monitoring" ; -m vert
sp_configure "enable streamlined parallel" ; -m vert
sp_configure "enable surrogate processing" ; -m vert
sp_configure "enable transactional memory" ; -m vert
sp_configure "enable unicode conversions" ; -m vert
sp_configure "enable unicode normalization" ; -m vert
sp_configure "enable utility lvl 0 scan wait" ; -m vert
sp_configure "enable webservices" ; -m vert
sp_configure "enable workload analyzer" ; -m vert
sp_configure "enable xact coordination" ; -m vert
sp_configure "enable xml" ; -m vert
sp_configure "enforce dump configuration" ; -m vert
sp_configure "engine local cache percent" ; -m vert
sp_configure "engine memory log size" ; -m vert
sp_configure "errorlog archive holding limit" ; -m vert
sp_configure "errorlog pipe active" ; -m vert
sp_configure "errorlog pipe max messages" ; -m vert
sp_configure "errorlog size" ; -m vert
sp_configure "esp execution priority" ; -m vert
sp_configure "esp execution stacksize" ; -m vert
sp_configure "esp unload dll" ; -m vert
sp_configure "event buffers per engine" ; -m vert
sp_configure "event log computer name" ; -m vert
sp_configure "event logging" ; -m vert
sp_configure "exception on rounding overflow" ; -m vert
sp_configure "executable codesize + overhead" ; -m vert
sp_configure "execution time monitoring" ; -m vert
sp_configure "expand numeric truncated scale" ; -m vert
sp_configure "extend implicit conversion" ; -m vert
sp_configure "extended cache size" ; -m vert
sp_configure "extended syntax validation" ; -m vert
sp_configure "external keystore" ; -m vert
sp_configure "global async prefetch limit" ; -m vert
sp_configure "global cache partition number" ; -m vert
sp_configure "hash table hit rate threshold" ; -m vert
sp_configure "heap memory per user" ; -m vert
sp_configure "histogram tuning factor" ; -m vert
sp_configure "housekeeper free write percent" ; -m vert
sp_configure "i/o accounting flush interval" ; -m vert
sp_configure "i/o batch size" ; -m vert
sp_configure "i/o polling process count" ; -m vert
sp_configure "identity burning set factor" ; -m vert
sp_configure "identity grab size" ; -m vert
sp_configure "identity reservation size" ; -m vert
sp_configure "idle migration timeout" ; -m vert
sp_configure "ignore outdated plans" ; -m vert
sp_configure "imrs cache utilization" ; -m vert
sp_configure "inline table functions" ; -m vert
sp_configure "job scheduler interval" ; -m vert
sp_configure "job scheduler memory" ; -m vert
sp_configure "job scheduler tasks" ; -m vert
sp_configure "js heartbeat interval" ; -m vert
sp_configure "js job output width" ; -m vert
sp_configure "js restart delay" ; -m vert
sp_configure "jsagent error log size" ; -m vert
sp_configure "kernel mode" ; -m vert
sp_configure "kernel resource memory" ; -m vert
sp_configure "large allocation auto tune" ; -m vert
sp_configure "license information" ; -m vert
sp_configure "lock address spinlock ratio" ; -m vert
sp_configure "lock hashtable size" ; -m vert
sp_configure "lock scheme" ; -m vert
sp_configure "lock shared memory" ; -m vert
sp_configure "lock spinlock ratio" ; -m vert
sp_configure "lock table spinlock ratio" ; -m vert
sp_configure "lock timeout pipe active" ; -m vert
sp_configure "lock timeout pipe max messages" ; -m vert
sp_configure "lock wait period" ; -m vert
sp_configure "log audit logon failure" ; -m vert
sp_configure "log audit logon success" ; -m vert
sp_configure "max SQL text monitored" ; -m vert
sp_configure "max async i/os per engine" ; -m vert
sp_configure "max async i/os per server" ; -m vert
sp_configure "max buffers per lava operator" ; -m vert
sp_configure "max cached stmt size" ; -m vert
sp_configure "max cis remote connections" ; -m vert
sp_configure "max concurrently recovered db" ; -m vert
sp_configure "max js restart attempts" ; -m vert
sp_configure "max memory" ; -m vert
sp_configure "max native threads per engine" ; -m vert
sp_configure "max nesting level" ; -m vert
sp_configure "max network packet size" ; -m vert
sp_configure "max network peek depth" ; -m vert
sp_configure "max number network listeners" ; -m vert
sp_configure "max number of IN elements" ; -m vert
sp_configure "max online Q engines" ; -m vert
sp_configure "max online engines" ; -m vert
sp_configure "max parallel degree" ; -m vert
sp_configure "max pci slots" ; -m vert
sp_configure "max query parallel degree" ; -m vert
sp_configure "max repartition degree" ; -m vert
sp_configure "max resource granularity" ; -m vert
sp_configure "max scan parallel degree" ; -m vert
sp_configure "max transfer history" ; -m vert
sp_configure "max utility parallel degree" ; -m vert
sp_configure "maximum dump conditions" ; -m vert
sp_configure "maximum failed logins" ; -m vert
sp_configure "maximum job output" ; -m vert
sp_configure "memory alignment boundary" ; -m vert
sp_configure "memory dump compression level" ; -m vert
sp_configure "memory per worker process" ; -m vert
sp_configure "messaging memory" ; -m vert
sp_configure "metrics elap max" ; -m vert
sp_configure "metrics exec max" ; -m vert
sp_configure "metrics lio max" ; -m vert
sp_configure "metrics pio max" ; -m vert
sp_configure "min pages for parallel scan" ; -m vert
sp_configure "minimum password length" ; -m vert
sp_configure "mnc_full_index_filter" ; -m vert
sp_configure "msg confidentiality reqd" ; -m vert
sp_configure "msg integrity reqd" ; -m vert
sp_configure "net password encryption reqd" ; -m vert
sp_configure "network polling mode" ; -m vert
sp_configure "nonpushdown pipe active" ; -m vert
sp_configure "nonpushdown pipe max messages" ; -m vert
sp_configure "number of Q engines at startup" ; -m vert
sp_configure "number of alarms" ; -m vert
sp_configure "number of aux scan descriptors" ; -m vert
sp_configure "number of backup connections" ; -m vert
sp_configure "number of cached stmt spinlock" ; -m vert
sp_configure "number of ccbs" ; -m vert
sp_configure "number of checkpoint tasks" ; -m vert
sp_configure "number of devices" ; -m vert
sp_configure "number of disk tasks" ; -m vert
sp_configure "number of dtx participants" ; -m vert
sp_configure "number of dump load retries" ; -m vert
sp_configure "number of dump threads" ; -m vert
sp_configure "number of early send rows" ; -m vert
sp_configure "number of engines at startup" ; -m vert
sp_configure "number of hcb gc tasks per db" ; -m vert
sp_configure "number of histogram steps" ; -m vert
sp_configure "number of imrs gc tasks per db" ; -m vert
sp_configure "number of index trips" ; -m vert
sp_configure "number of java sockets" ; -m vert
sp_configure "number of java sockets" ; -m vert
sp_configure "number of large i/o buffers" ; -m vert
sp_configure "number of lob gc tasks per db" ; -m vert
sp_configure "number of locks" ; -m vert
sp_configure "number of mailboxes" ; -m vert
sp_configure "number of messages" ; -m vert
sp_configure "number of network tasks" ; -m vert
sp_configure "number of oam trips" ; -m vert
sp_configure "number of open databases" ; -m vert
sp_configure "number of open indexes" ; -m vert
sp_configure "number of open objects" ; -m vert
sp_configure "number of open partitions" ; -m vert
sp_configure "number of pack tasks per db" ; -m vert
sp_configure "number of pre-allocated extents" ; -m vert
sp_configure "number of reexecutions" ; -m vert
sp_configure "number of remote connections" ; -m vert
sp_configure "number of remote logins" ; -m vert
sp_configure "number of remote sites" ; -m vert
sp_configure "number of sort buffers" ; -m vert
sp_configure "number of user connections" ; -m vert
sp_configure "number of worker processes" ; -m vert
sp_configure "numeric autoparam sharing" ; -m vert
sp_configure "o/s file descriptors" ; -m vert
sp_configure "object lockwait timing" ; -m vert
sp_configure "open index hash spinlock ratio" ; -m vert
sp_configure "open index spinlock ratio" ; -m vert
sp_configure "open object spinlock ratio" ; -m vert
sp_configure "optimization goal" ; -m vert
sp_configure "optimization timeout limit" ; -m vert
sp_configure "optimize dump for faster load" ; -m vert
sp_configure "optimize temp table resolution" ; -m vert
sp_configure "optimizer level" ; -m vert
sp_configure "page lock promotion HWM" ; -m vert
sp_configure "page lock promotion LWM" ; -m vert
sp_configure "page lock promotion PCT" ; -m vert
sp_configure "page utilization percent" ; -m vert
sp_configure "partition groups" ; -m vert
sp_configure "partition spinlock ratio" ; -m vert
sp_configure "pci memory size" ; -m vert
sp_configure "per object statistics active" ; -m vert
sp_configure "percent database for history" ; -m vert
sp_configure "percent database for output" ; -m vert
sp_configure "percent history free" ; -m vert
sp_configure "percent output free" ; -m vert
sp_configure "performance monitoring option" ; -m vert
sp_configure "permission cache entries" ; -m vert
sp_configure "physical lock cushion" ; -m vert
sp_configure "plan text pipe active" ; -m vert
sp_configure "plan text pipe max messages" ; -m vert
sp_configure "point query rate threshold" ; -m vert
sp_configure "prevent automatic upgrade" ; -m vert
sp_configure "print deadlock information" ; -m vert
sp_configure "print recovery information" ; -m vert
sp_configure "print rollback information" ; -m vert
sp_configure "print stack overflow info" ; -m vert
sp_configure "procedure cache size" ; -m vert
sp_configure "procedure deferred compilation" ; -m vert
sp_configure "process wait events" ; -m vert
sp_configure "prod-consumer overlap factor" ; -m vert
sp_configure "query tuning plan executions" ; -m vert
sp_configure "quorum heartbeat interval" ; -m vert
sp_configure "quorum heartbeat retries" ; -m vert
sp_configure "quoted identifier enhancements" ; -m vert
sp_configure "rapidlog buffer size" ; -m vert
sp_configure "rapidlog max files" ; -m vert
sp_configure "read committed with lock" ; -m vert
sp_configure "recovery interval in minutes" ; -m vert
sp_configure "recovery prefetch size" ; -m vert
sp_configure "remote server pre-read packets" ; -m vert
sp_configure "replication agent memory size" ; -m vert
sp_configure "restore database options" ; -m vert
sp_configure "restricted decrypt permission" ; -m vert
sp_configure "restricted parameter markers" ; -m vert
sp_configure "row lock promotion LWM" ; -m vert
sp_configure "row lock promotion PCT" ; -m vert
sp_configure "rtm thread idle wait period" ; -m vert
sp_configure "rules file" ; -m vert
sp_configure "runnable process search count" ; -m vert
sp_configure "sampling percent" ; -m vert
sp_configure "scavenge temp objects" ; -m vert
sp_configure "search engine timeout factor" ; -m vert
sp_configure "secondary signal handling" ; -m vert
sp_configure "secure default login" ; -m vert
sp_configure "select for update" ; -m vert
sp_configure "select on syscomments.text" ; -m vert
sp_configure "send doneinproc tokens" ; -m vert
sp_configure "session migration timeout" ; -m vert
sp_configure "session tempdb log cache size" ; -m vert
sp_configure "shared memory starting address" ; -m vert
sp_configure "show deferred compilation text" ; -m vert
sp_configure "sigstack csmd min size" ; -m vert
sp_configure "sigstack min size" ; -m vert
sp_configure "simplified native access plan" ; -m vert
sp_configure "size of auto identity column" ; -m vert
sp_configure "size of global fixed heap" ; -m vert
sp_configure "size of process object heap" ; -m vert
sp_configure "size of shared class heap" ; -m vert
sp_configure "size of unilib cache" ; -m vert
sp_configure "snapshot isolation timeout" ; -m vert
sp_configure "solaris async i/o mode" ; -m vert
sp_configure "sproc optimize timeout limit" ; -m vert
sp_configure "sql server clock tick length" ; -m vert
sp_configure "sql text pipe active" ; -m vert
sp_configure "sql text pipe max messages" ; -m vert
sp_configure "stack guard size" ; -m vert
sp_configure "stack size" ; -m vert
sp_configure "start xp server during boot" ; -m vert
sp_configure "statement cache size" ; -m vert
sp_configure "statement pipe active" ; -m vert
sp_configure "statement pipe max messages" ; -m vert
sp_configure "statement statistics active" ; -m vert
sp_configure "stream rep msg channel timeout" ; -m vert
sp_configure "streamlined dynamic SQL" ; -m vert
sp_configure "strict dtm enforcement" ; -m vert
sp_configure "suppress js max task message" ; -m vert
sp_configure "suspend audit when device full" ; -m vert
sp_configure "syb_sendmsg port number" ; -m vert
sp_configure "sysimrslogs prealloc percent" ; -m vert
sp_configure "sysimrslogs prealloc size" ; -m vert
sp_configure "sysstatistics flush interval" ; -m vert
sp_configure "systemwide password expiration" ; -m vert
sp_configure "tape retention in days" ; -m vert
sp_configure "tcp no delay" ; -m vert
sp_configure "tcp no delay" ; -m vert
sp_configure "temp table statement caching" ; -m vert
sp_configure "text prefetch size" ; -m vert
sp_configure "threshold event max messages" ; -m vert
sp_configure "threshold event monitoring" ; -m vert
sp_configure "time slice" ; -m vert
sp_configure "total data cache size" ; -m vert
sp_configure "total logical memory" ; -m vert
sp_configure "total physical memory" ; -m vert
sp_configure "transfer utility memory size" ; -m vert
sp_configure "txn to pss ratio" ; -m vert
sp_configure "unified login required" ; -m vert
sp_configure "update statistics hashing" ; -m vert
sp_configure "upgrade version" ; -m vert
sp_configure "use security services" ; -m vert
sp_configure "user log cache queue size" ; -m vert
sp_configure "user log cache size" ; -m vert
sp_configure "user log cache spinlock ratio" ; -m vert
sp_configure "utility statistics hashing" ; -m vert
sp_configure "wait event timing" ; -m vert
sp_configure "wait on uncommitted insert" ; -m vert
sp_configure "workload manager cache size" ; -m vert
sp_configure "xact coordination interval" ; -m vert
sp_configure "xp_cmdshell context" ; -m vert
EOF

exit 0
