echo '=========Install jq - json processor'
[ ! d ~/bin ] && mkdir ~/bin
curl -L https://github.com/jqlang/jq/releases/download/jq-1.6/jq-linux64 > ~/bin/jq
chmod +x ~/bin/jq
