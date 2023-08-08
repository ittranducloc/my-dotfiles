#!/usr/bin/env bash
CURRENT_DIR=$(pwd)
echo '=========Install lsd'
# https://github.com/lsd-rs/lsd
echo ''
./asdf/rust_install.sh &
wait
cargo install lsd
sudo ln -sf ~/.asdf/installs/rust/1.67.1/bin/lsd /usr/bin/
lsd --version
