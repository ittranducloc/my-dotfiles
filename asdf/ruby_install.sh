#!/usr/bin/env bash
[ -x "$(command -v gem)" ] && echo 'ruby already installed' && exit 0

echo '=========Install ruby by asdf version manager'
sudo apt-get update
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline-dev zlib1g-dev libncurses-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
source ~/.asdf/asdf.sh
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby latest
asdf global ruby latest
[ ! -x "$(command -v gem)" ] && echo 'Fail to install ruby' && exit 1
gem --version
