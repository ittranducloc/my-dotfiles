export FZF_CTRL_T_OPTS="--bind '?:toggle-preview' --preview 'bat --color=always --style=numbers --line-range=:500 {}' --select-1 --exit-0"
export FZF_DEFAULT_OPTS="--height=40% --layout=reverse --info=inline --ansi"
if type fd &>/dev/null; then
  export FZF_DEFAULT_COMMAND='fd --type file --hidden --follow --exclude .git --color=always'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND='fd --type directory --hidden --follow --exclude .git --color=always'
fi
