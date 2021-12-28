echo 'Update bat'
cd /tmp 2>&1 > /dev/null
VERSION=0.18.3
curl -LO "https://github.com/sharkdp/bat/releases/download/v${VERSION}/bat_${VERSION}_amd64.deb"
dpkg -i "./bat_${VERSION}_amd64.deb"
rm -f "./bat_${VERSION}_amd64.deb"
cd - 2>&1 > /dev/null
