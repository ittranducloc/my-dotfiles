#!/usr/bin/env bash
echo '=========Install nvim'
echo ''
cd /tmp
echo "$(pwd)"
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
ls -l ./nvim-linux64.tar.gz
tar zxvf ./nvim-linux64.tar.gz --directory=$HOME
$HOME/nvim-linux64/bin/nvim --version
rm -f ./nvim-linux64.tar.gz
