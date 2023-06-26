#!/usr/bin/env bash
echo '=========Install nerdfonts'
echo ''
cd /tmp
echo "$(pwd)"
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Ubuntu.zip
unzip -u ./Ubuntu.zip -d ~/.fonts
fc-cache -fv
[ $? -ne 0 ] && echo 'Failed to install nerdfonts'
rm -f ./Ubuntu.zip
