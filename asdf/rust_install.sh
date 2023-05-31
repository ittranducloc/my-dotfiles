#!/usr/bin/env bash
[ -x $(command -v cargo) ] && echo 'rust already installed' && exit 0

echo '=========Install rust by asdf version manager'
source ~/.asdf/asdf.sh
asdf plugin add rust https://github.com/code-lever/asdf-rust.git
asdf install rust 1.57.0
asdf global rust 1.57.0
[ ! -x $(command -v cargo) ] && echo 'Fail to install rust' && exit 1
cargo --version
