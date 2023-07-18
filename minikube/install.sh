#! /usr/bin/env bash
echo "=========Install minikube"
cd /tmp
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
/usr/local/bin/minikube --version
echo "Install zsh completion for minikube and kubectl"
if [ -w "$HOME/.zshrc" ]; then
	echo 'source <(kubectl completion zsh)' >>"$HOME/.zshrc"
	echo 'source <(minikube completion zsh)' >>"$HOME/.zshrc"
fi
