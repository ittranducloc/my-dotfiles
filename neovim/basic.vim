" Intelligent case sensitivity for pattern search
set ignorecase smartcase

" Using the clipboard as the default register
set clipboard=unnamedplus

set relativenumber
set number

" Try to auto save changes if could
set autowrite

" Easy to recognize the position of cursor
set cursorline

" Make space between the zoomed line and the top and bottom of screen
set scrolloff=3

set wrap

set gdefault

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Make pattern search "very magic" as default, use standard regex instead of vim-invented
nnoremap / /\v
nnoremap ? /\v
set cmdwinheight=10

nnoremap n nzz
nnoremap N Nzz

" Easy move upward & downward when lines are wrapped
nnoremap j gj
nnoremap k gk

" Always repeat the last substitution with the preserved flags
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Easy to use motion for matches when invoke operation
onoremap <Tab> %

" Easy to back to Normal mode from Insert mode
inoremap jj <ESC>
inoremap jk <ESC>
noremap <F1> <ESC>
noremap! <F1> <ESC>
