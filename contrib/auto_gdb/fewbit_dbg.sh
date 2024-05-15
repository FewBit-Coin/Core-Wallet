#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.fewbitcore/fewbitd.pid file instead
fewbit_pid=$(<~/.fewbitcore/testnet3/fewbitd.pid)
sudo gdb -batch -ex "source debug.gdb" fewbitd ${fewbit_pid}
