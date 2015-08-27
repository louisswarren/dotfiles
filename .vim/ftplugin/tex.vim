nnoremap <buffer><f9> :w<cr> :!pdflatex %<cr>
setlocal textwidth=80

inoremap <C-e> <esc>yyp:s/begin/end/<cr>O
nnoremap <C-e> yyp:s/begin/end/<cr>

