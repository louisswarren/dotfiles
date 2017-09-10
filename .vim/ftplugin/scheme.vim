nnoremap <f10> :w! ~/minlog/.clarinet<cr>
nnoremap <leader><f10> :1,.w! ~/minlog/.clarinet<cr>
nnoremap <f9> :.w! ~/minlog/.clarinet<cr>j
inoremap <f9> <esc>:.w! ~/minlog/.clarinet<cr>A<cr>
vnoremap <f9> :'<,'>w! ~/minlog/.clarinet<cr>

nnoremap <f6> :!rm ~/minlog/.clarinet<cr>

function! UndoMinlog()
	redir! >~/minlog/.clarinet
	echo "(undo)"
	redir END
endfunction

nnoremap <f11> :call UndoMinlog()<cr>k
inoremap <f11> <esc>:call UndoMinlog()<cr>kA

set sw=2
set ts=2
set sts=2
set et
