echo "=========Install docker"

# Setup the stable repository
apt-get update
apt-get intsall -y ca-certificates curl gnupg lsb-releases
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

echo ''
echo 'The version installed'
docker --version

# Post installation
groupadd docker
usermod -aG docker $USER
newgrp docker

echo ''
echo 'Install docker-compose'
[ ! -d ~/bin ] && mkdir ~/bin
curl -Lo $HOME/bin/docker-compose https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-linux-x86_64
chmod +x $HOME/bin/docker-compose
echo ''
echo 'The version installed'
docker-compose --version
