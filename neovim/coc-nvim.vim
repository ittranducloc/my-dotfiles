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

nmap <silent> <leader>cd <Plug>(coc-definition)
nmap <silent> <leader>ct <Plug>(coc-type-definition)
nmap <silent> <leader>ci <Plug>(coc-implementation)
nmap <silent> <leader>cr <Plug>(coc-references)

nmap <silent> <leader>cr <Plug>(coc-rename)
nmap <silent> <leader>cf <Plug>(coc-fix-current)

nnoremap <silent> <leader>cld :<C-u>CocList -A diagnostics<cr>
nnoremap <silent> <leader>cls :<C-u>CocList -I symbols<cr>
nnoremap <silent> <leader>clo :<C-u>CocList -A outline<cr>
nnoremap <silent> <leader>clr :<C-u>CocListResume<cr>

" list source from `coc-lists` extension
nnoremap <silent> <leader>clr :<C-u>CocList mru<cr>
nnoremap <silent> <leader>clm :<C-u>CocList marks<cr>

nnoremap <silent> K :call <SID>show_documentation()<cr>

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
