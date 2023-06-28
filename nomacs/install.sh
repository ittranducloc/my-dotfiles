#! /usr/bin/env bash
# https://nomacs.org/download/
echo "=========Install nomacs - image viewer"
echo ""
apt show nomacs
sudo apt install -y nomacs
[ $? -ne 0 ] && echo "Failed to install nomacs" && exit 1
/usr/bin/nomacs --version
