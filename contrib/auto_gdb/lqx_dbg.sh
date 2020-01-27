#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.lqxcore/lqxd.pid file instead
lqx_pid=$(<~/.lqxcore/testnet3/lqxd.pid)
sudo gdb -batch -ex "source debug.gdb" lqxd ${lqx_pid}
