echo '=========Install neovim'
echo ''
apt-get update
apt-get install -y software-properties-common python3 python3-distutils python3-dev python3-pip
add-apt-repository -y ppa:neovim-ppa/stable
apt-get update
apt-get install -y neovim

echo 'Installed version of neovim'
nvim --version
echo ''

echo 'Use NeoVim for some (or all) of the editor alternatives'
update-alternatives --remove-all vim
update-alternatives --install "/usr/bin/vim" "vim" "/usr/bin/nvim" 1
update-alternatives --remove-all vi
update-alternatives --install "/usr/bin/vi" "vi" "/usr/bin/nvim" 1
update-alternatives --remove-all editor
update-alternatives --install "/usr/bin/editor" "editor" "/usr/bin/nvim" 1

echo 'default vim/vi'
update-alternatives --list vim

echo ''
NVIMRC_REALPATH=$(realpath $(find . -iname 'init.vim'))
echo "symlink config file"
[ ! -d $HOME/.config/nvim ] && mkdir -p $HOME/.config/nvim
ln -sf $NVIMRC_REALPATH $HOME/.config/nvim/init.vim
