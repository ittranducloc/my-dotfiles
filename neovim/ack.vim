cnoreabbrev Ack Ack!
cnoreabbrev ack Ack!
cnoreabbrev Ackw Ack! -w
cnoreabbrev ackw Ack! -w
cnoreabbrev Ackh Ack! '^\#' %
cnoreabbrev ackh Ack! '^\#' %
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
