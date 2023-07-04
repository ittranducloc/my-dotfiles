#! /usr/bin/env bash
echo "=========Install lazydocker"
CURRENT_DIR=$(pwd)
cd /tmp
pwd
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
[ $? -ne 0 ] && echo "Failed to install lazydocker" && exit 1
cd $CURRENT_DIR
$HOME/.local/bin/lazydocker --version
