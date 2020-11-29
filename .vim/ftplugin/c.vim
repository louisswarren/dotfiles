nnoremap <buffer><F5> :!./%.vimout<CR>
nnoremap <buffer><F9> :w<CR>:!clear<CR>:!gcc -o %.vimout -std=c99 %<CR>:!./%.vimout<CR>:!rm %.vimout<CR>

set tabstop=8
set shiftwidth=8
set softtabstop=8

let c_space_errors = 1

highlight WhiteSpaceBol ctermbg=magenta
match WhiteSpaceBol /^ \+/
