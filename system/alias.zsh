alias ezsh='vi ~/.zshrc'
alias rzsh='source ~/.zshrc'
alias csh='function _csh(){touch $1; chmod +x $1; vi $1}; _csh'
alias alrg='function _alrg(){alias | rg $1}; _alrg'
alias alf='alias | fzf'
alias agf='function _agf(){apt search $1 | rg -A 2 ".*$1.*/focal"}; _agf'
alias vif='vi $(fzf -m)'
alias mux=tmuxinator
