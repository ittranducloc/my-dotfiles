echo '=========Install fzf'
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install &
wait
[ $? -ne 0 ] && echo 'Fail to install fzf'
