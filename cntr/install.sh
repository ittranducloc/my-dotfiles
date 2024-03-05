#! /usr/bin/env bash
echo "=========Install cntr - container debugging tool"
cd $HOME/bin/
wget https://github.com/Mic92/cntr/releases/download/1.5.3/cntr-bin-1.5.3-x86_64-unknown-linux-musl -O cntr
chmod +x ./cntr
./cntr --version
./cntr --help
