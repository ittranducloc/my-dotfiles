#!/usr/bin/env bash
echo "Install bat"
cd /tmp
curl -LO https://github.com/sharkdp/bat/releases/download/v0.18.3/bat_0.18.3_amd64.deb
dpkg -i ./bat_0.18.3_amd64.deb
cd -
