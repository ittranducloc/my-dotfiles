echo '=========Install ack'
[ ! -d ~/bin ] && mkdir ~/bin
curl https://beyondgrep.com/ack-v3.5.0 > ~/bin/ack && chmod +x ~/bin/ack
echo 'Installed version'
ack --version
echo ''
