nnoremap <buffer><f9> :w<cr> :!pdflatex %<cr>

inoremap <C-e> <esc>yyp:s/begin/end/<cr>O
nnoremap <C-e> yyp:s/begin/end/<cr>

setlocal textwidth=80
setlocal spell spelllang=en_nz
