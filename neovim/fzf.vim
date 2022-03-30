" Key mappings for 'fzf.vim' plugin
command! -bang -nargs=? -complete=dir FilesCurrentBuffer call fzf#vim#files(fnamemodify(bufname('%'), ':h'), fzf#vim#with_preview(), <bang>0)
nnoremap <leader>ff :FilesCurrentBuffer<CR>
nnoremap <leader>fp :Files<CR>
nnoremap <leader>fg :GFiles?<CR>
nnoremap <leader>fw :Windows<CR>
