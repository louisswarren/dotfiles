nnoremap <buffer><F5> :!./%.vimout<CR>
nnoremap <buffer><F9> :w<CR>:!clear<CR>:!gcc -o %.vimout -std=c11 %<CR>:!./%.vimout<CR>
nnoremap <buffer><S-F9> :w<CR>:!clear<CR>:!gcc -o %.vimout -std=c89 %<CR>:!./%.vimout<CR>
nnoremap <leader>l :w<CR>:!clear<CR>:!gcc -o %.vimout -std=c11 %<CR>:!./%.vimout<CR>
