#! /usr/bin/env bash
echo "Install helm - The package manager for Kubernetes"
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
sudo chmod 755 /usr/local/bin/helm
/usr/local/bin/heml version
echo "Add helm plugin of oh-my-zsh"
