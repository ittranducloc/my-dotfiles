echo '=========Update tmux'
echo 'Update dependencies'
apt-get update
apt-get install -y make libevent-dev libncurses-dev build-essential bison pkg-config xclip
OLD_VERSION=3.2a
NEW_VERSION=3.2a
cd /tmp
curl -LO https://github.com/tmux/tmux/releases/download/$NEW_VERSION/tmux-$NEW_VERSION.tar.gz
tar xzf tmux-*.tar.gz
cd tmux-*
./configure
make && make install
[ ! -x "$(command -v tmux)" ] && echo 'Fail to update tmux' && exit 1
rm -rf /tmp/tmux*
echo 'Succeed to update tmux'
