nnoremap <buffer><f9> :w<cr> :!pdflatex %<cr>

imap <C-b> <esc><C-b>O
nnoremap <C-b> 0yf}o<esc>p:s/begin/end/<cr>:nohl<cr>

nnoremap <leader>$ ?\$<cr>lc/\$<cr>


" Add label, add or on the right side
nnoremap <leader>di0 yypO\RightLabel{$\msor$I}<esc>j$F$i \mor <esc>:s/AxiomC\\|BinaryInfC\\|TrinaryInfC/UnaryInfC/e<cr>0/\\mor<cr>W
" Add label, add or on the left side
nnoremap <leader>di1 yypO\RightLabel{$\msor$I}<esc>j0f$a \mor <esc>:s/AxiomC\\|BinaryInfC\\|TrinaryInfC/UnaryInfC/e<cr>0/\\mor<cr>h
" Add label, restate as TrinaryInfC
nnoremap <leader>de yypO\RightLabel{$\msor$E}<esc>j:s/AxiomC\\|UnaryInfC\\|BinaryInfC/TrinaryInfC/e<cr>f$l

" Add label, add and on the right side
nnoremap <leader>ci0 yypO\RightLabel{$\msand$I}<esc>j$F$i \mand <esc>:s/AxiomC\\|UnaryInfC\\|TrinaryInfC/BinaryInfC/e<cr>0/\\mand<cr>W
" Add label, add and on the left side
nnoremap <leader>ci1 yypO\RightLabel{$\msand$I}<esc>j0f$a \mand <esc>:s/AxiomC\\|UnaryInfC\\|TrinaryInfC/BinaryInfC/e<cr>0/\\mand<cr>h
" Add label, restate as BinaryInfC
nnoremap <leader>ce yypO\RightLabel{$\msand$E}<esc>j:s/AxiomC\\|UnaryInfC\\|TrinaryInfC/BinaryInfC/e<cr>0f$l

" Add label, add implication before statement, replace to UnaryInfC
nnoremap <leader>ii yypO\RightLabel{$\mimp$I}<esc>j0f$a \mimp <esc>:s/AxiomC\\|BinaryInfC\\|TrinaryInfC/UnaryInfC/<cr>0/\\mimp<cr>0/\\mimp<cr>h
" Add label, delete premise and implication, replace to BinaryInfC
nnoremap <leader>ie yypO\RightLabel{$\mimip$E}<esc>j0f$ld/\\mimp<cr>dW:s/\$(\(.*\))\$/$\1$/e<cr>:s/AxiomC\\|UnaryInfC\\|TrinaryInfC/BinaryInfC/e<cr>f$l

" Add label, add existence before statement, add parentheses around statement,
" replace to UnaryInfC
nnoremap <leader>ei yypO\RightLabel{$\exists$I}<esc>j0f$a\exists_x (<esc>f$i)<esc>:s/AxiomC\\|BinaryInfC\\|TrinaryInfC/UnaryInfC/e<cr>0f(
" Add label, restate as BinaryInfC
nnoremap <leader>ee yypO\RightLabel{$\exists$E}<esc>j:s/AxiomC\\|UnaryInfC\\|TrinaryInfC/BinaryInfC/e<cr>0f$l

" Add label, add forall before statement, add parentheses around statement,
" replace to UnaryInfC
nnoremap <leader>fi yypO\RightLabel{$\forall$I}<esc>j0f$a\forall_x (<esc>f$i)<esc>:s/AxiomC\\|BinaryInfC\\|TrinaryInfC/UnaryInfC/e<cr>0f(
" Add label, delete forall, delete parentheses if they exist, replace to
" UnaryInfC
nnoremap <leader>fe yypO\RightLabel{$\forall$E}<esc>j0/\\forall<cr>dW0:s/\$(\(.*\))\$/$\1$/e<cr>:s/AxiomC\\|BinaryInfC\\|TrinaryInfC/UnaryInfC/e<cr>f$l

" Add label, add negation, remove implies bottom, replace to UnaryInfC
nnoremap <leader>ni yypO\RightLabel{$\lnot$I}<esc>j0f$a\lnot <esc>$? \\mimp \\bot<cr>dt$:s/AxiomC\\|BinaryInfC\\|TrinaryInfC/UnaryInfC/e<cr>0/\\lnot<cr>El
" Add lable, remove lnot, add implies bottom, replace to UnaryInfC
nnoremap <leader>ne yypO\RightLabel{$\lnot$E}<esc>j0/\\lnot<cr>dW$F$i \mimp \bot<esc>:s/AxiomC\\|BinaryInfC\\|TrinaryInfC/UnaryInfC/e<cr>0f$l

setlocal textwidth=80
setlocal spell spelllang=en_nz
