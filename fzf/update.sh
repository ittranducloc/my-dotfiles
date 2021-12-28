echo 'update fzf'
cd "$HOME/.fzf" 2>&1 > /dev/null
git pull
./install
cd - 2>&1 > /dev/null
