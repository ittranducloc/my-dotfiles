" Disable default mappings
let g:EasyMotion_do_mapping = 0

nmap <Leader>s <Plug>(easymotion-s)
vmap t <Plug>(easymotion-t)
omap t <Plug>(easymotion-t)

" hjlk motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0

" Improve targets' readability
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'

let g:EasyMotion_smartcase = 1
let g:EasyMotion_user_smartsign_us = 1

" 'incsearch' plugin
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" 'incsearch-easymotio' plugin
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)
