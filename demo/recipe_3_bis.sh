#!/bin/bash

cat <<EOF|~/sandboxes/rsandbox_5_6_10/m -v
insert into ptc_demo.users values (null,'vkahvedj');
drop table ptc_demo.users;
EOF

~/sandboxes/rsandbox_5_6_10/use_all 'select * from ptc_demo.users'

cat<<EOF
Current status: 
- master and slave2 are broken
- slave1 is not broken, but is delayed

What to do?
- stop pt-table-sync (--no-continue is fundamental here)
- mysqlbinlog on master, find out binlog pos of last event BEFORE drop table
- start slave until that position on slave1
- start using slave1 and see about fixing master and slave2
EOF
