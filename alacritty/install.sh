#!/usr/bin/env bash
CURRENT_DIR=$(pwd)
echo '=========Install alacritty'
echo ''
./asdf/rust_install.sh &
wait
sudo apt-get update
sudo apt-get install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
cargo install --version=0.11.0 alacritty
sudo ln -sf ~/.asdf/installs/rust/1.67.1/bin/alacritty /usr/bin/
alacritty --version
echo 'Setup Post Build'
cd /tmp
curl -Lo alacritty https://github.com/alacritty/alacritty/archive/refs/tags/v0.11.0.tar.gz
tar zxvf alacritty
cd ./alacritty-*
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
[ ! -d ${ZDOTDIR:-~}/.zsh_functions ] && mkdir ${ZDOTDIR:-~}/.zsh_functions
cp extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty
cd ..
rm -rf ./alacritty*
cd $CURRENT_DIR
