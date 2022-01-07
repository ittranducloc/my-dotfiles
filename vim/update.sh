echo '=========Update vim'
echo ''
echo "Current version of vim"
/usr/local/bin/vim --version | grep "Vi IMproved"
apt-get update
apt-get install -y git make clang libtool-bin libxt-dev libpython3-dev
CURRENT_DIR=$(pwd)
cd /tmp 1> /dev/null
git clone https://github.com/vim/vim.git
cd ./vim/src 1> /dev/null
sed -i 's/#CONF_OPT_PYTHON3 \= --enable-python3interp/CONF_OPT_PYTHON3 \= --enable-python3interp/g' Makefile
make reconfig
make install
echo "Installed latest version of vim at /usr/local/bin"
/usr/local/bin/vim --version | grep "Vi IMproved"
cd /tmp
rm -rf ./vim
cd $CURRENT_DIR 1> /dev/null
