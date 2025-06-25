#!/bin/bash

s+ <<EOF | gawk '/marker/ { print $2 "k" }'
set nocount on ;
select "marker",@@maxpagesize/1024 as "pagesize";
EOF

exit 0
