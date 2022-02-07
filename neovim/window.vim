" Easy switch windows in Terminal mode
if has('nvim')
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red  guifg=white ctermbg=1 ctermfg=15
  tnoremap <M-h> <C-\><C-N><C-W>h
  tnoremap <M-j> <C-\><C-N><C-W>j
  tnoremap <M-k> <C-\><C-N><C-W>k
  tnoremap <M-l> <C-\><C-N><C-W>l
  tnoremap <M-w> <C-\><C-N><C-W>w
endif

" Easy to resize window horizontally & vertically
nnoremap <M-_> :resize -1<CR>
nnoremap <M-+> :resize +1<CR>
nnoremap <M-[> <C-W><20
nnoremap <M-]> <C-W>>20
