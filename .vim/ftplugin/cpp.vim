nnoremap <buffer><F5> :!./%.vimout<CR>
nnoremap <buffer><F9> :w<CR>:!clear<CR>:!g++ -o %.vimout -std=c++11 %<CR>:!./%.vimout<CR>
