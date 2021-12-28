#!/usr/bin/env bash
echo 'Update ctop'
echo "Current version: $(ctop -v)"
echo 'Remove current version'
rm -f "$(which ctop)"
curl -Lo ~/bin/ctop https://github.com/bcicen/ctop/releases/download/0.7.6/ctop-0.7.6-linux-amd64
chmod +x ~/bin/ctop
[ ! -x $(command -v "ctop") ] && echo 'Fail to update ctop' && exit 1
ctop -v
