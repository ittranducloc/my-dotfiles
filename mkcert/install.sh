#! /usr/bin/env bash
echo "=========Install TLS certificate utility - mkcert"
sudo wget -O /usr/local/bin/mkcert "https://github.com/FiloSottile/mkcert/releases/download/v1.4.4/mkcert-v1.4.4-linux-$(dpkg --print-architecture)"
sudo chmod +x /usr/local/bin/mkcert
mkcert --version
