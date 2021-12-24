echo 'update bat'
cd /tmp
VERSION=0.18.3
curl -LO "https://github.com/sharkdp/bat/releases/download/v${VERSION}/bat_${VERSION}_amd64.deb"
dpkg -i "./bat_${VERSION}_amd64.deb"
cd -
