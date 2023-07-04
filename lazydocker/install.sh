#! /usr/bin/env bash
echo "=========Install lazydocker"
CURRENT_DIR=$(pwd)
cd /tmp
pwd
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
[ $? -ne 0 ] && echo "Failed to install lazydocker" && exit 1
cd $CURRENT_DIR
$HOME/.local/bin/lazydocker --version
echo "Link config file"
CONFIG_DIR=$HOME/.config/lazydocker
mkdir -p "$CONFIG_DIR" 2>&1 >/dev/null
ln -sf "$(pwd)/lazydocker/config.yml" "$CONFIG_DIR/config.yml"
ls -l "$CONFIG_DIR/config.yml"
