#!/usr/bin/env bash
echo '=========Install tmuxinator'
echo ''
echo 'Install dependencies for building ruby'
apt-get update
apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline-dev zlib1g-dev libncurses-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
source ~/.asdf/asdf.sh
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby latest &
wait
[ ! -x $(command -v gem) ] && echo 'Fail to install ruby' && exit 1
gem --version
gem install tmuxinator
[ ! -x $(command -v tmuxinator) ] && echo 'Fail to install tmuxinator' && exit 1
tmuxinator version
