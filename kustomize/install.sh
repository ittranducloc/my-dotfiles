#! /usr/bin/env bash
echo "Install kustomize - solution for customizing Kubernetes resource configuration free from templates and DSLs"
# https://kubectl.docs.kubernetes.io/installation/kustomize/binaries/
[[ -d $HOME/bin ]] && mkdir $HOME/bin
cd $HOME/bin
curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash
