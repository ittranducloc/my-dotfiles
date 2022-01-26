" Exchange default key <leader> and key ,
let mapleader = ','
noremap \ ,

nnoremap <leader>n nzz
nnoremap <leader>N Nzz

nnoremap <leader>d "_d
nnoremap <leader>x "_x

nnoremap <leader>p "+p
nnoremap <leader>P "+P

" Key mappings for 'fzf.vim' plugin
command! -bang -nargs=? -complete=dir FilesCurrentBuffer call fzf#vim#files(fnamemodify(bufname('%'), ':h'), fzf#vim#with_preview(), <bang>0)
nnoremap <leader>ff :FilesCurrentBuffer<CR>
nnoremap <leader>fp :Files<CR>
nnoremap <leader>fg :GFiles?<CR>
