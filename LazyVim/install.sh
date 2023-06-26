#!/usr/bin/env bash
echo "=========Setup LazyVim"
echo ""
echo "Backup current nvim config"
# required
mv ~/.config/nvim ~/.config/nvim.bak

# optional but recommended
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

echo "Clone starter from github repo"
# Clone the starter
git clone git@github.com:ittranducloc/my-nvim-starter.git ~/.config/nvim

echo "Open nvim to kick off the setup"
nvim ~/.config/nvim
