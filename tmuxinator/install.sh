#!/usr/bin/env bash
echo '=========Install tmuxinator'
echo ''
./asdf/ruby_install.sh &
wait
gem install tmuxinator
[[ ! -x "$(command -v tmuxinator") ]] && echo 'Fail to install tmuxinator' && exit 1
tmuxinator version
