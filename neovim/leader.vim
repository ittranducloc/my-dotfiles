" Exchange default key <leader> and key ,
let mapleader = ','
noremap \ ,

nnoremap <leader>d "_d
nnoremap <leader>x "_x

nnoremap <leader>p "+p
nnoremap <leader>P "+P

" Append semicolon at the end of current line
nnoremap <leader>; :s/^.*$/\0;<CR>:nohl<CR>

" Visual select the recently pasted text
nnoremap <leader>v V`] 

nnoremap <leader>mjs o<ESC>I```js<CR><CR>```<ESC>ki
nnoremap <leader>mb o<ESC>I```bash<CR><CR>```<ESC>ki
nnoremap <leader>mts o<ESC>I```ts<CR><CR>```<ESC>ki
