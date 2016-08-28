nnoremap <buffer><f9> :w<cr> :!pdflatex %<cr>

imap <C-b> <esc><C-b>O
nnoremap <C-b> 0yf}o<esc>p:s/begin/end/<cr>:nohl<cr>

nnoremap <leader>$ ?\$<cr>lc/\$<cr>


" Add label, add implication before statement, replace to UnaryInfC
nnoremap <leader>ii yypO\RightLabel{$\mimp$I}<esc>j0f$a\mimp <esc>:s/AxiomC\\|UnaryInfC/BinaryInfC/<cr>0/\\mimp<cr>
" Add label, delete premise and implication, replace to BinaryInfC
nnoremap <leader>ie yypO\RightLabel{$\mimip$E}<esc>j0f$ld/\\mimp<cr>dW:s/\$(\(.*\))\$/$\1$/e<cr>:s/AxiomC\\|UnaryInfC/BinaryInfC/e<cr>

" Add label, add existence before statement, add parentheses around statement,
" replace to UnaryInfC
nnoremap <leader>ei yypO\RightLabel{$\exists$I}<esc>j0f$a\exists_x (<esc>f$i)<esc>:s/AxiomC\\|BinaryInfC/UnaryInfC/e<cr>
" Add label, create blank BinaryInfC
nnoremap <leader>ee o\RightLabel{$\exists$E}<cr>\BinaryInfC{$$}<esc>h

" Add label, add forall before statement, add parentheses around statement,
" replace to UnaryInfC
nnoremap <leader>fi yypO\RightLabel{$\forall$I}<esc>j0f$a\forall_x (<esc>f$i)<esc>:s/AxiomC\\|BinaryInfC/UnaryInfC/e<cr>
" Add label, delete forall, delete parentheses if they exist, replace to
" UnaryInfC
nnoremap <leader>fe yypO\RightLabel{$\forall$E}<esc>j0/\\forall<cr>dW0:s/\$(\(.*\))\$/$\1$/e<cr>:s/AxiomC\\|BinaryInfC/UnaryInfC/e<cr>

setlocal textwidth=80
setlocal spell spelllang=en_nz
