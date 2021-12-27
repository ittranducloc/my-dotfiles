echo 'Install ripgrep'
VERSION=13.0.0
cd /tmp
curl -LO "https://github.com/BurntSushi/ripgrep/releases/download/${VERSION}/ripgrep_${VERSION}_amd64.deb" 
dpkg -i "ripgrep_${VERSION}_amd64.deb"
rm "ripgrep_${VERSION}_amd64.deb"
cd -
