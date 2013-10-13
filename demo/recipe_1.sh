#!/bin/bash -x
pt-table-checksum S=/var/folders/mr/86dgg7qn291bmznn8_43mvg40000gn/T//mysql_sandbox18675.sock --recursion-method=dsn=S=/var/folders/mr/86dgg7qn291bmznn8_43mvg40000gn/T//mysql_sandbox18675.sock,D=percona,t=dsns --no-check-binlog-format --tables ptc_demo.users

