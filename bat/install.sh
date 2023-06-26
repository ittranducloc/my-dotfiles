echo '=========Install bat'
cd /tmp
VERSION=0.23.0
curl -LO "https://github.com/sharkdp/bat/releases/download/v${VERSION}/bat_${VERSION}_amd64.deb"
sudo dpkg -i "./bat_${VERSION}_amd64.deb"
rm -f "./bat_${VERSION}_amd64.deb"
cd -
