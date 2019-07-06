nnoremap <buffer><F5> :!./%.vimout<CR>
nnoremap <buffer><F9> :w<CR>:!clear<CR>:!gcc -o %.vimout -std=c99 %<CR>:!./%.vimout<CR>
