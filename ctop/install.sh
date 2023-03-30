echo '=========Install ctop'
[ ! -d ~/bin ] && mkdir ~/bin
curl -Lo ~/bin/ctop https://github.com/bcicen/ctop/releases/download/0.7.7/ctop-0.7.7-linux-amd64
chmod +x ~/bin/ctop
[ ! -x ~/bin/ctop ] && echo 'Fail to install ctop' && exit 1
~/bin/ctop -v
