#! /usr/bin/env bash
echo "=========Install Z Library Desktop App"
cd /tmp
pwd
wget https://go-to-zlibrary.se/soft/zlibrary-setup-latest.deb
dpkg -I ./zlibrary-setup-latest.deb
sudo dpkg -i ./zlibrary-setup-latest.deb
rm -f ./zlibrary-setup-latest.deb
