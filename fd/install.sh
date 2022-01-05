echo '=========Install fd'
cd /tmp
VERSION=8.3.0
curl -LO "https://github.com/sharkdp/fd/releases/download/v${VERSION}/fd_${VERSION}_amd64.deb"
dpkg -i ./fd_*
rm -f ./fd_*
cd - 2>&1 /dev/null
