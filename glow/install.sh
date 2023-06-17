#!/usr/bin/env bash
CURRENT_DIR=$(pwd)
echo '=========Install glow'
echo ''
./asdf/go_install.sh &
wait
source ./asdf/env.zsh
go install github.com/charmbracelet/glow@latest
glow --version
cd $CURRENT_DIR
