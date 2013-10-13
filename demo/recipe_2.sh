#!/bin/bash -x
pt-table-sync S=/var/folders/mr/86dgg7qn291bmznn8_43mvg40000gn/T//mysql_sandbox18676.sock --replicate percona.checksums --execute --sync-to-master 
~/sandboxes/rsandbox_5_6_10/use_all 'select * from ptc_demo.users'
