echo '=========Update ack'
echo 'Current version'
ack --version
echo ''
rm -f ~/bin/ack
curl https://beyondgrep.com/ack-v3.7.0 > ~/bin/ack && chmod +x ~/bin/ack
echo 'Latest version'
ack --version
echo ''
