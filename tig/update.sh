echo 'Update tig'

CURRENT_DIR=$(pwd)
cd /tmp
OLD_VERSION=tig-2.5.8
NEW_VERSION=tig-2.5.8
curl -LO https://github.com/jonas/tig/releases/download/"$NEW_VERSION"/"$NEW_VERSION".tar.gz
tar xvf "$NEW_VERSION".tar.gz
cd "$NEW_VERSION"
make
make install
[ ! -f ~/bin/tig ] && echo 'Fail to update tig' && exit 1
echo "Succeed to update tig from $OLD_VERSION to $NEW_VERSION"
$HOME/bin/tig --version
cd $CURRENT_DIR
