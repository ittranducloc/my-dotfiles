execute 'source' fnamemodify(expand('<sfile>'), ':h').'/easymotion-idea.vim'

vmap t <Plug>(easymotion-t)
omap t <Plug>(easymotion-t)

" Improve targets' readability
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'

let g:EasyMotion_smartcase = 1
let g:EasyMotion_user_smartsign_us = 1

" 'incsearch' plugin
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
let g:incsearch#magic = '\v' " very magic

" 'incsearch-easymotio' plugin
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)
