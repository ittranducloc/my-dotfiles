#! /usr/bin/env bash
echo "#########Install tor browser"
cd /tmp
wget https://www.torproject.org/dist/torbrowser/12.5.2/tor-browser-linux64-12.5.2_ALL.tar.xz
tar xvf ./tor-browser-linux64-12.5.2_ALL.tar.xz -C ~/
rm -f ./tor-browser-linux64-12.5.2_ALL.tar.xz
