#!/usr/bin/env bash
CURRENT_DIR=$(pwd)
echo '=========Install alacritty'
echo ''
./asdf/rust_install.sh &
wait
apt-get update
apt-get install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
cargo install --version=0.11.0 alacritty
ln -s ~/.asdf/installs/rust/1.67.1/bin/alacritty /usr/local/bin
alacritty --version
echo 'Setup Post Build'
cd /tmp
curl -Lo alacritty https://github.com/alacritty/alacritty/archive/refs/tags/v0.9.0.tar.gz
tar zxvf alacritty
cd ./alacritty-*
tic -xe alacritty,alacritty-direct extra/alacritty.info
cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
desktop-file-install extra/linux/Alacritty.desktop
update-desktop-database
[ ! -d ${ZDOTDIR:-~}/.zsh_functions ] && mkdir ${ZDOTDIR:-~}/.zsh_functions
cp extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty
cd ..
rm -rf ./alacritty*
cd $CURRENT_DIR
