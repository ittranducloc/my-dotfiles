echo '=========Install tmux'
echo 'Install dependencies'
sudo apt-get update
sudo apt-get install -y make libevent-dev libncurses-dev build-essential bison pkg-config xclip
VERSION=3.3a
cd /tmp
curl -LO https://github.com/tmux/tmux/releases/download/$VERSION/tmux-$VERSION.tar.gz
tar xzf tmux-*.tar.gz
cd tmux-*
./configure
sudo make && sudo make install
[ ! -x "$(command -v tmux)" ] && echo 'Fail to install tmux' && exit 1
rm -rf /tmp/tmux*
echo 'Succeed to install tmux'
