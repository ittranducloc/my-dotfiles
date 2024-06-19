#! /usr/bin/env bash
echo "===Instal Homebrew package manager"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/loctd/.zshrc
sudo apt install -y build-essential gcc
echo "Brew installed at version: $(brew --version)"
