#!/usr/bin/env bash
echo '=========Install neovim'
echo ''
apt-get update
apt-get install -y software-properties-common python3 python3-distutils python3-dev python3-pip
add-apt-repository -y ppa:neovim-ppa/stable
apt-get update
apt-get install -y neovim
pip3 install neovim-remote

echo 'Installed version of neovim'
nvim --version
echo 'Installed version of neovim-remote'
nvr --version
echo ''

echo 'Use NeoVim for some (or all) of the editor alternatives'
update-alternatives --remove-all editor
update-alternatives --install "/usr/bin/editor" "editor" "/usr/bin/nvim" 1

echo 'default editor'
update-alternatives --list editor

# Just symbol link when the config file is not existed
echo ''
NVIMRC_REALPATH=$(realpath $(find . -iname 'init.vim'))
NVIMRC_DEFAULT_PATH=$HOME/.config/nvim/init.vim
if [[ ! -f $NVIMRC_DEFAULT_PATH ]]
then
	echo "Try to symlink config file"
	ln -s $NVIMRC_REALPATH $NVIMRC_DEFAULT_PATH
else
	echo "" >> $NVIMRC_DEFAULT_PATH
	echo "source $NVIMRC_REALPATH" >> $NVIMRC_DEFAULT_PATH
fi
