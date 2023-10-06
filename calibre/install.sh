#! /usr/bin/env bash
echo "=========Install E-Book reader - calibre"
#https://calibre-ebook.com/download_linux
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
/usr/bin/calibre --version
