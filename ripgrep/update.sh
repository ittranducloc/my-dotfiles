echo 'Update ripgrep'
VERSION=13.0.0
cd /tmp 2>&1 > /dev/null
curl -LO "https://github.com/BurntSushi/ripgrep/releases/download/${VERSION}/ripgrep_${VERSION}_amd64.deb" 
dpkg -i ripgrep_${VERSION}_amd64.deb
rm -f ripgrep_${VERSION}_amd64.deb 2>&1 > /dev/null
cd - 2>&1 > /dev/null
