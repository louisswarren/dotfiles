nnoremap <buffer><f9> :w<cr> :!pdflatex %<cr>

imap <C-b> <esc><C-e>O
nnoremap <C-b> 0yf}o<esc>p:s/begin/end/<cr>

nnoremap <leader>$ ?\$<cr>lc/\$<cr>

setlocal textwidth=80
setlocal spell spelllang=en_nz
