nnoremap <buffer><f9> :w<cr>:!python3 "%"<cr>
nnoremap <buffer><f5> :!python3 -i "%"<cr>
setlocal expandtab
nnoremap <f6> i"""<esc>:r! python3 %<cr>o"""<esc>
