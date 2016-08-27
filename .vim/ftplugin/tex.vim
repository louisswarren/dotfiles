nnoremap <buffer><f9> :w<cr> :!pdflatex %<cr>

imap <C-b> <esc><C-b>O
nnoremap <C-b> 0yf}o<esc>p:s/begin/end/<cr>:nohl<cr>

nnoremap <leader>$ ?\$<cr>lc/\$<cr>

nnoremap <leader>ei yypO\RightLabel{$\exists$I}<esc>j0f$a\exists_x (<esc>f$i)<esc>:s/AxiomC/UnaryInfC/e<cr>
nnoremap <leader>fi yypO\RightLabel{$\forall$I}<esc>j0f$a\forall_x (<esc>f$i)<esc>:s/AxiomC/UnaryInfC/e<cr>
nnoremap <leader>fe yypO\RightLabel{$\forall$E}<esc>j0/\\forall<esc>dW0:s/\$(\(.*\))\$/$\1$/<cr>:s/AxiomC/UnaryInfC/e<cr>

setlocal textwidth=80
setlocal spell spelllang=en_nz
