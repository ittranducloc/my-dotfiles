echo '=========Install tig'

echo 'Install requirement'
sudo apt-get install -y make gcc libncurses-dev
CURRENT_DIR=$(pwd)
cd /tmp
VERSION=tig-2.5.8
curl -LO https://github.com/jonas/tig/releases/download/"$VERSION"/"$VERSION".tar.gz
tar xvf "$VERSION".tar.gz
cd "$VERSION"
make
make install
[ ! -f ~/bin/tig ] && echo 'Fail to install tig' && exit 1
echo 'Succeed to install tig'
$HOME/bin/tig --version
cd $CURRENT_DIR
