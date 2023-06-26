#! /usr/bin/env bash

echo "=========Install cloudflare WARP CLI"
echo ''
# https://pkg.cloudflareclient.com/
# Add cloudflare gpg key
curl https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg

# Add this repo to your apt repositories
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list

# Install
sudo apt-get update && sudo apt-get install cloudflare-warp
[ $? -ne 0 ] && echo "Failed to install cloudflare WARP CLI " && exit 1
/usr/bin/warp-cli --version
