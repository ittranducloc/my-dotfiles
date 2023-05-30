cnoreabbrev Ack Ack!
cnoreabbrev ack Ack!
cnoreabbrev Ackh Ack! '^\#' %
cnoreabbrev ackh Ack! '^\#' %
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
