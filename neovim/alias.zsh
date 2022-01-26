alias vi=nvim
alias vo='nvim -O'
alias vp='nvim -p'
alias vs='nvim -S'

# https://github.com/nelstrom/modvim-code/blob/master/terminal/alias-nvim-nvr.sh
# Prevent accidental nesting nvim instance inside terminal buffer
if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
  if [ -x "$(command -v nvr)" ]; then
    alias nvim=nvr
  else
    alias nvim='echo "No nesting!"'
  fi
fi
