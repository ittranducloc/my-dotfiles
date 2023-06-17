#!/usr/bin/env bash
[ -x "$(command -v go)" ] && echo 'go already installed' && exit 0

echo '=========Install go by asdf version manager'
source ~/.asdf/asdf.sh
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang latest
asdf global golang latest
[ ! -x "$(command -v go)" ] && echo 'Fail to install go' && exit 1
go --version
