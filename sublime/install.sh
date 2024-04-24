#! /usr/bin/env bash
set -x
echo "=========Install Sublime Text"
snap search sublime-text
sudo snap install --classic sublime-text
snap info sublime-text
if [ -d $HOME/.config/sublime-text/ ]; then
	if [ ! -d $HOME/.config/sublime-text/Packages/ ]; then
		mkdir "$HOME/.config/sublime-text/Packages/"
	fi
	ln -sf "$DOTFILES_DIR/sublime/User" "$HOME/.config/sublime-text/Packages/"
fi
set x
