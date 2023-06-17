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
set scrolloff=1

set wrap

set gdefault

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
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

" Search and replace word under cursor using F2
nnoremap <F2> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

" Toggle quickfix window
nnoremap <expr> <F1> empty(filter(getwininfo(), 'v:val.quickfix')) ? ':copen<CR>' : ':cclose<CR>'

" Enable syntax highlight in markdown files
let g:markdown_fenced_languages=['javascript', 'js=javascript', 'html', 'css', 'json=javascript', 'java', 'typescript', 'ts=typescript']

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
