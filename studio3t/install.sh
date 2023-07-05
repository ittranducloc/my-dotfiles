#! /usr/bin/env bash
echo "=========Install Studio 3T for Mongo"
CURRENT_DIR=$(pwd)
cd /tmp
wget https://download.studio3t.com/studio-3t/linux/2023.5.0/studio-3t-linux-x64.tar.gz
ls -l ./studio-3t-linux-x64.tar.gz
tar zxvf ./studio-3t-linux-x64.tar.gz
./studio-3t-linux-x64.sh
rm -f ./studio-3t-linux-x64.*
ls -l $HOME/studio3t/'Studio 3T Linux.desktop'
cd $CURRENT_DIR
