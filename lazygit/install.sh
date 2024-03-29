#!/usr/bin/env bash
echo "=========Install lazygit"
cd /tmp
echo "$(pwd)"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
ls -l lazygit.tar.gz
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
[ $? -ne 0] && echo "Failed to install lazygit - $(LAZYGIT_VERSION)" && exit 1
/usr/local/bin/lazygit --version
# https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md
ln -sf "$DOTFILES_ROOT/lazygit/config.yml" "$HOME/.config/lazygit/"
cat "$HOME/.config/lazygit/config.yml"
