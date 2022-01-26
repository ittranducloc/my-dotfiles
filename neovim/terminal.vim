" From Terminal mode, turn back to Normal mode
tnoremap <ESC> <C-\><C-N>
" Send ESCAPE signal to terminal
tnoremap <F4> <ESC>

" Using the Current Neovim instance as Your Preferred Text Editor
" Use Case: Write commit message in window of `$ git commit`
" https://github.com/nelstrom/modvim-code/blob/master/terminal/preferred-editor.vim
if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif
