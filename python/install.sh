#! /usr/bin/env zsh
echo "===Install python version manager"
# curl https://pyenv.run | bash
vared -p "Edit .zshrc as the instruction above to finish setup. Press any key to confirm. " -c tmp
echo "Installed pyenv: $(pyenv --version)"
# sudo apt install -y direnv
echo "Installed direnv: $(direnv --version)"
echo "Create a .envrc file at root of python project to auto activate virtualenv."
echo "Refer the file $PWD/python/.envrc"
