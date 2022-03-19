echo '=========Update silversearcher-ag'
echo 'Current version'
ag --version
echo ''
sudo apt-get update
sudo apt-get install -y silversearcher-ag
echo 'Latest version'
ag --version
echo ''
