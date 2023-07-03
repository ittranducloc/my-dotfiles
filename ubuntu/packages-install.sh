#! /usr/bin/env bash
echo "=========Install tools"
apt show net-tools
sudo apt install -y net-tools
[ $? -ne 0 ] && exit 1
netstat --version
