#! /usr/bin/env bash
cd ~
rm -rf Desktop Music Templates Videos
mkdir Desktop Music Templates Videos
cp ~/.dotfiles/bin/user-dirs.dirs ~/.config/
xdg-user-dirs-update --force
