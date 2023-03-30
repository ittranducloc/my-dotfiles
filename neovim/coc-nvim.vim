" Trigger autocompletion
inoremap <silent><expr> <c-space> coc#refresh()

" Extensions to be installed
let g:coc_global_extensions = [
      \ 'coc-json'
      \ , 'coc-tsserver'
      \ , 'coc-marketplace'
      \ , 'coc-highlight'
      \ , 'coc-snippets'
      \ , 'coc-neosnippet'
      \ , 'https://github.com/andys8/vscode-jest-snippets'
      \ , 'https://github.com/xabikos/vscode-javascript'
      \ , 'coc-lists'
      \ , 'coc-yank'
      \ ]

" Override default config home
let g:coc_config_home = '~/.coc-nvim'

" Key mappings
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
nmap <silent> [cd <Plug>(coc-diagnostic-prev)
nmap <silent> ]cd <Plug>(coc-diagnostic-next)

nmap <silent> <leader>cgd <Plug>(coc-definition)
nmap <silent> <leader>cgt <Plug>(coc-type-definition)
nmap <silent> <leader>cgi <Plug>(coc-implementation)
nmap <silent> <leader>cgr <Plug>(coc-references)

nmap <silent> <leader>crn <Plug>(coc-rename)
nmap <silent> <leader>crf <Plug>(coc-refactor)
nmap <silent> <leader>cf <Plug>(coc-fix-current)

nmap <silent> <leader>c= <Plug>(coc-format-selected)
vmap <silent> <leader>c= <Plug>(coc-format-selected)
command! -nargs=0 Format :call CocAction('format')

nnoremap <silent> <leader>cld :<C-u>CocList -A diagnostics<cr>
nnoremap <silent> <leader>cls :<C-u>CocList -I symbols<cr>
nnoremap <silent> <leader>clo :<C-u>CocList -A outline<cr>
nnoremap <silent> <leader>cll :<C-u>CocListResume<cr>
nnoremap <silent> <leader>cly :<C-u>CocList yank<cr>
nnoremap <silent> <leader>clb :<C-u>CocList buffers<cr>

" list source from `coc-lists` extension
nnoremap <silent> <leader>clr :<C-u>CocList mru<cr>
nnoremap <silent> <leader>clm :<C-u>CocList marks<cr>

nnoremap <silent> <leader>crs :<C-u>CocRestart<cr>

nnoremap <silent> K :call <SID>show_documentation()<cr>
inoremap <C-P> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>

" Show man page for shell command in vim file or documentation in source file
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Configure `coc-highlight` extension to highlight symbol of current position
" on all positions of current buffer
autocmd CursorHold * silent call CocActionAsync('highlight')
highlight CocHighlightText ctermbg=242 guibg=Grey50
set updatetime=300
