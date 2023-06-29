#! /usr/bin/env bash
echo "=========Install docker"

# Setup the stable repository
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
	"deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" |
	sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

# Install
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
[ $? -ne 0 ] && echo "Failed to install docker" && exit 1

echo ''
echo 'The version installed'
docker --version
docker compose version

# Post installation
echo "Add $USER to docker group"
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

echo "Check KVM support"
sudo apt install -y cpu-checker
kvm-ok
echo "Check KVM enabled"
lsmod | grep kvm
echo "Add $USER to kvm group"
sudo usermod -aG kvm $USER
echo "Logout and login again to group membership re-evaluated"
