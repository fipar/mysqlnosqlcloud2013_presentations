#!/bin/bash

pushd ~/sandboxes/rsandbox_5_6_10
./s1 -e 'insert into ptc_demo.users value (null,"written from slave")'
./use_all 'select * from ptc_demo.users'
popd
