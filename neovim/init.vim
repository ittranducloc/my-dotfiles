" Intelligent case sensitivity for pattern search
set ignorecase smartcase

" Using the clipboard as the default register
set clipboard=unnamedplus

set relativenumber

" Try to auto save changes if could
set autowrite

" Easy to recognize the position of cursor
set cursorline

" Make space between the zoomed line and the top and bottom of screen
set scrolloff=3

" Make pattern search "very magic" as default, use standard regex instead of vim-invented
nnoremap / /\v
nnoremap ? /\v
set cmdwinheight=10

" Easy move upward & downward when lines are wrapped
nnoremap j gj
nnoremap k gk

" Always repeat the last substitution with the preserved flags
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Easy to use motion for matches when invoke operation
onoremap <Tab> %

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/terminal.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/window.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/leader.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/override.vim'
