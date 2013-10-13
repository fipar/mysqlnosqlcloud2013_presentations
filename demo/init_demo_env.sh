#!/bin/bash
pushd ~/sandboxes
./rsandbox_5_6_10/stop_all
rm -rf rsandbox_5_6_10
make_replication_sandbox 5.6.10
popd
