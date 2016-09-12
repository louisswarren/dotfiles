nnoremap <buffer><f9> :w<cr> :!pdflatex %<cr>

imap <C-b> <esc><C-b>O
nnoremap <C-b> 0yf}o<esc>p:s/begin/end/<cr>:nohl<cr>

nnoremap <leader>$ ?\$<cr>lc/\$<cr>

" Remove discharge brackets :s/\[\(\$.*\$\)\]/\1/e<cr> (possibly)

function ChangeC(newtype)
	" Set axiom type
	s/AxiomC\|UnaryInfC\|BinaryInfC\|TrinaryInfC/\=a:newtype/
	" Remove any discharge brackets
	s/\[\(\$.*\$\)\]/\1/e
	" Add (back) discharge brackets for axioms
	if a:newtype == 'AxiomC'
		s/\\AxiomC{\(.*\)}/\\AxiomC{[\1]}/
	endif
endfunction

function TrimParen()
	s/\$(\(.*\))\$/$\1$/e
endfunction

function AddIntroLabel(symbol)
	execute "normal! O\RightLabel{$" . a:symbol . "$I}\<esc>j"
endfunction

function AddElimLabel(symbol)
	execute "normal! O\RightLabel{$" . a:symbol . "$E}\<esc>j"
endfunction

" Add label, add or on the right side
nnoremap <leader>di0 yyp:call AddIntroLabel("\\msor")<cr>$F$i \mor <esc>:call ChangeC("UnaryInfC")<cr>0/\\mor<cr>W
" Add label, add or on the left side
nnoremap <leader>di1 yyp:call AddIntroLabel("\\msor")<cr>0f$a \mor <esc>:call ChangeC("UnaryInfC")<cr>0/\\mor<cr>h
" Create the assumptions, remove parentheses, add discharge brackets
" Currently broken
nnoremap <leader>da yy2p0f$ld/\\mor<cr>xdw:s/\$(\(.*\))\$/$\1$/e<cr>:s/UnaryInfC\\|BinaryInfC\\|TrinaryInfC/AxiomC/e<cr>j$F$d? \\?\\mor<cr>:s/\$(\(.*\))\$/$\1$/e<cr>:s/UnaryInfC\\|BinaryInfC\\|TrinaryInfC/AxiomC/e<cr>
" Add label, restate as TrinaryInfC
nnoremap <leader>de yyp:call AddElimLabel("\\msor")<cr>:call ChangeC("TrinaryInfC")<cr>f$l

" Add label, add and on the right side
nnoremap <leader>ci0 yyp:call AddIntroLabel("\\msand")<cr>$F$i \mand <esc>:call ChangeC("UnaryInfC")<cr>0/\\mand<cr>W
" Add label, add and on the left side
nnoremap <leader>ci1 yyp:call AddIntroLabel("\\msand")<cr>0f$a \mand <esc>:call ChangeC("UnaryInfC")<cr>0/\\mand<cr>h
" Add label, restate as BinaryInfC
nnoremap <leader>ce yyp:call AddElimLabel("\\msand")<cr>:call ChangeC("BinaryInfC")<cr>0f$l

" Add label, add implication before statement,
" replace to UnaryInfC
nnoremap <leader>ii yyp:call AddIntroLabel("\\mimp")<cr>0f$a \mimp <esc>:call ChangeC("UnaryInfC")<cr>0/\\mimp<cr>0/\\mimp<cr>h
" Add label, delete premise and implication, replace to BinaryInfC
nnoremap <leader>ie yyp:call AddElimLabel("\\mimp")<cr>0f$ld/\\mimp<cr>dW:s/\$(\(.*\))\$/$\1$/e<cr>:call ChangeC("BinaryInfC")<cr>f$l

" Add label, add existence before statement, add parentheses around statement,
" replace to UnaryInfC
nnoremap <leader>ei yyp:call AddIntroLabel("\\exists")<cr>0f$a\exists_x (<esc>f$i)<esc>:call ChangeC("UnaryInfC")<cr>0f(
" Create the assumption, remove parentheses, add discharge brackets
nnoremap <leader>ea yyp/\\exists<cr>dW:s/\$(\(.*\))\$/$\1$/e<cr>:s/UnaryInfC\\|BinaryInfC\\|TrinaryInfC/AxiomC/e<cr>0f{a[<esc>$i]<esc>0f$l
" Add label, restate as BinaryInfC
nnoremap <leader>ee yyp:call AddElimLabel("\\exists")<cr>:call ChangeC("BinaryInfC")<cr>0f$l

" Add label, add forall before statement, add parentheses around statement,
" replace to UnaryInfC
nnoremap <leader>fi yyp:call AddIntroLabel("\\forall")<cr>0f$a\forall_x (<esc>f$i)<esc>:call ChangeC("UnaryInfC")<cr>0f(
" Add label, delete forall, delete parentheses if they exist, replace to
" UnaryInfC
nnoremap <leader>fe yyp:call AddElimLabel("\\forall")<cr>0/\\forall<cr>dW0:s/\$(\(.*\))\$/$\1$/e<cr>:call ChangeC("UnaryInfC")<cr>f$l

" Add label, add negation, remove implies bottom, replace to UnaryInfC
nnoremap <leader>ni yyp:call AddIntroLabel("\\lnot")<cr>0f$a\lnot <esc>$? \\mimp \\bot<cr>dt$:call ChangeC("UnaryInfC")<cr>0/\\lnot<cr>El
" Add lable, remove lnot, add implies bottom, replace to UnaryInfC
nnoremap <leader>ne yyp:call AddElimLabel("\\lnot")<cr>0/\\lnot<cr>xdw$F$i \mimp \bot<esc>:call ChangeC("UnaryInfC")<cr>0f$l


nnoremap <leader>ax o\AxiomC{[$$]}<esc>hhi
nnoremap <leader>un :call ChangeC("UnaryInfC")<cr>0f$l

setlocal textwidth=80
setlocal spell spelllang=en_nz
