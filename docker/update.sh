echo "=========Update docker"

echo ''
echo 'The current version'
docker --version

# Update version information
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

echo ''
echo 'The version updated'
docker --version

echo ''
echo 'Update docker-compose'
echo ''
echo 'The current version'
docker-compose --version
rm -f $HOME/bin/docker-compose
curl -Lo $HOME/bin/docker-compose https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64
chmod +x $HOME/bin/docker-compose
echo ''
echo 'The version updated'
docker-compose --version
