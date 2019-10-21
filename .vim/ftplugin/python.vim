nnoremap <buffer><f9> :w<cr>:!python3 "%"<cr>
nnoremap <buffer><f5> :!python3 -i "%"<cr>
setlocal expandtab
nnoremap <f6> i"""<esc>:r! python3 %<cr>o"""<esc>

" Adapted from agda-vim
" https://github.com/derekelkins/agda-vim
function! LogPython()
	let path=@%
    let pythonwinnr = bufwinnr('__python__')
    let prevwinnr = winnr()
    if pythonwinnr == -1
        let eventignore_save = &eventignore
        set eventignore=all

        silent keepalt botright 8split __python__

        let &eventignore = eventignore_save
        setlocal noreadonly
        setlocal buftype=nofile
        setlocal bufhidden=hide
        setlocal noswapfile
        setlocal nobuflisted
        setlocal nolist
        setlocal nonumber
        setlocal nowrap
        setlocal textwidth=0
        setlocal nocursorline
        setlocal nocursorcolumn

        if exists('+relativenumber')
            setlocal norelativenumber
        endif
    else
        let eventignore_save = &eventignore
        set eventignore=BufEnter

        execute pythonwinnr . 'wincmd w'
        let &eventignore = eventignore_save
    endif

    let lazyredraw_save = &lazyredraw
    set lazyredraw
    let eventignore_save = &eventignore
    set eventignore=all

	exec 'setlocal statusline=python3\ ' . substitute(path, ' ', '\\ ', 'g')
	silent %delete _

	let text=system('python3 ' . shellescape(path))
	silent 0put =text

    0

    let &lazyredraw = lazyredraw_save
    let &eventignore = eventignore_save

    let eventignore_save = &eventignore
    set eventignore=BufEnter

    execute prevwinnr . 'wincmd w'
    let &eventignore = eventignore_save
endfunction

nnoremap <leader>l :call LogPython()<cr>
