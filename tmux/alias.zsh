alias tm='function _tm(){tmux attach-session -t $1 || tmux new-session -s $1}; _tm'
