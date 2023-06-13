cnoreabbrev g Ack!
cnoreabbrev gw Ack! -w
cnoreabbrev gh Ack! '^\#' %
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
