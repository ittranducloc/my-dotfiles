#!/usr/bin/env bash
echo '=========Install asdf'
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.2
source ~/.asdf/asdf.sh

echo 'asdf: install latest version of nodejs'
echo 'asdf: install dependencies'
apt-get install -y dirmngr gpg curl gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs
asdf plugin list --urls
asdf install nodejs latest
asdf global nodejs latest
asdf current
