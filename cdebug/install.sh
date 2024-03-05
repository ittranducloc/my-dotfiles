#! /usr/bin/env bash
echo "=========Install cdebug - container debugging tool"
cd $HOME/bin
curl -Ls https://github.com/iximiuz/cdebug/releases/latest/download/cdebug_linux_amd64.tar.gz | tar xvz
./cdebug --version
./cdebug --help
