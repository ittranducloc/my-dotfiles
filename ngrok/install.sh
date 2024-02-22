#! /usr/bin/env bash
echo "=========Install ngrok"
cd /tmp
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar xzvf ./ngrok-v3-stable-linux-amd64.tgz -C $HOME/bin/
$HOME/bin/ngrok -v
rm -f ./ngrok-v3-stable-linux-amd64.tgz
