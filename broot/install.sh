#! /usr/bin/env bash
echo "=========Install broot"
[[ ! -d "$HOME/bin" ]] && echo "Create $HOME/bin" && mkdir -p "$HOME/bin"
wget https://dystroy.org/broot/download/x86_64-linux/broot -P "$HOME/bin"
chmod +x $HOME/bin/broot
$HOME/bin/broot --version
