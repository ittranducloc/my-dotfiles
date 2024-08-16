alias ezsh='vi ~/.zshrc'
alias szsh='source ~/.zshrc'
alias aliasf='alias | fzf'
alias sfzf='source $DOTFILES_ROOT/fzf/key-binding.zsh'
alias xclip='xclip -selection clipboard'
alias nw='/usr/bin/ls -1Lct | head -n 1'
alias nwrm="/usr/bin/ls -1Lct | head -n 1 | xargs -p rm"
alias nwo="/usr/bin/ls -1Lct | head -n 1 | xargs -d '\n' xdg-open"
alias gsa='git submodule add'
alias o='xdg-open'
# alias python=python3

# function
mkcd() { mkdir -p -- "$1" && cd -P -- "$1"; }
sublm() { nohup /snap/bin/subl --multiinstance -- "$1" &> /dev/null &;}
pskill() {
    PID=$(psa "$1" | awk '{print $2}' | head -n 1)
    psa $PID
    kill -9 $PID
}
mksh() {touch "$1"; chmod +x "$1"; vi "$1"}
aliass() {alias | rg "$1"}
apts() {apt search "$1" | rg -A 2 ".*$1.*/jammy"}
cpmk() {mkdir -p $(dirname "$2") && cp -r "$1" "$2"}
pymon() {npx nodemon -w "$1" -x "python" "$1"}
gsmrm() {
  git submodule deinit -f "$1"
  git rm -f "$1"
  rm -rf ".git/modules/$1"
}
psa() {
  while test $# -gt 0
  do
    ps -fe | grep $1 | grep -v "grep $1" | grep -v "$0 $1"
    shift
  done
}
