echo 'Install ctop'
curl -Lo ~/bin/ctop https://github.com/bcicen/ctop/releases/download/0.7.6/ctop-0.7.6-linux-amd64
chmod +x ~/bin/ctop
[ ! -x $(command -v "ctop") ] && echo 'Fail to install ctop' && exit 1
ctop -v
