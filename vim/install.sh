echo '=========Install vim'
echo ''
apt-get update
apt-get install -y git make clang libtool-bin libxt-dev libpython3-dev
CURRENT_DIR=$(pwd)
cd /tmp 1> /dev/null
git clone https://github.com/vim/vim.git
cd ./vim/src 1> /dev/null
sed -i 's/#CONF_OPT_PYTHON3 \= --enable-python3interp/CONF_OPT_PYTHON3 \= --enable-python3interp/g' Makefile
make reconfig
make install
echo "Installed vim at /usr/local/bin"
/usr/local/bin/vim --version | grep "Vi IMproved"
echo "Set the newly installed version as default one"
update-alternatives --remove-all vim
update-alternatives --install "/usr/bin/vim" "vim" "/usr/local/bin/vim" 1
update-alternatives --remove-all vi
update-alternatives --install "/usr/bin/vi" "vi" "/usr/local/bin/vim" 1
echo 'default vim/vi'
update-alternatives --list vim
cd /tmp 1> /dev/null
rm -rf ./vim
cd $CURRENT_DIR 1> /dev/null
