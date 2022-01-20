" Remap key <leader>
let mapleader = ','

" From "terminal" mode, turn back to "normal" mode
tnoremap <leader><ESC> <C-\><C-N>

" Intelligent case sensitivity for pattern search
set ignorecase smartcase

" Using the clipboard as the default register
set clipboard=unnamedplus

set relativenumber

" Try to auto save changes if could
set autowrite

" Easy to jump to the match
noremap <Tab> %

" Easy to recognize the position of cursor
set cursorline

" Make space between the zoomed line and the top and bottom of screen
set scrolloff=3

" Easy to escape & back to normal mode
inoremap jj <ESC>

" Easy to resize window horizontally & vertically
nnoremap _ :resize -1<CR>
nnoremap + :resize +1<CR>
nnoremap [ <C-W><20
nnoremap ] <C-W>>20

" Make pattern search "very magic" as default, use standard regex instead of vim-invented
nnoremap / /\v
nnoremap ? /\v
set cmdwinheight=10

" Easy move upward & downward when lines are wrapped
nnoremap j gj
nnoremap k gk
