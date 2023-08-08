#!/usr/bin/env bash
CURRENT_DIR=$(pwd)
echo '=========Install lsd'
# https://github.com/lsd-rs/lsd
cd /tmp
wget https://github.com/lsd-rs/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb
sudo dpkg -i ./lsd_0.23.1_amd64.deb
lsd --version
rm -f ./lsd_0.23.1_amd64.deb
