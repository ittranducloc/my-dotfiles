#! /usr/bin/env bash
echo "=========Install IntelliJ"
snap search intellij-idea-ultimate
sudo snap install --classic intellij-idea-ultimate
[ $? -ne 0 ] && echo "Failed to install IntelliJ" && exit 1
/snap/bin/intellij-idea-ultimate --version
