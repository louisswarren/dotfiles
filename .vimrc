""""""""""""
" Vim-Plug "
""""""""""""

call plug#begin('~/.vim/plugged/')
Plug 'lervag/vimtex'
Plug 'chriskempson/base16-vim'
Plug 'derekelkins/agda-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'godlygeek/tabular'
call plug#end()

let g:vimtex_latexmk_callback=0

"""""""""
" Misc. "
"""""""""

filetype plugin on
let g:tex_flavor='latex'

set t_Co=256
let base16colorspace=256

" Store swap files elsewhere
set directory^=$HOME/.vim/tmp//


""""""""""""""
" Appearance "
""""""""""""""

" Colorscheme
syntax enable
set background=dark
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set cursorline
set number


"""""""""""""""
" Visual Cues "
"""""""""""""""

" Colour in a column on the right side
let &colorcolumn=join(range(81,84),",")

" Highlight trailing whitespace
highlight TrailingWhitespace ctermbg=magenta
autocmd ColorScheme * highlight TrailingWhitespace ctermbg=magenta guibg=magenta
autocmd BufWinEnter * match TrailingWhitespace /\s\+$/
autocmd InsertLeave * match TrailingWhitespace /\s\+$/
autocmd InsertEnter * match TrailingWhitespace /\s\+\%#\@<!$/


"""""""""""""
" Behaviour "
"""""""""""""

" Make ~ an operator
set tildeop

" Tabs
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround

" Scrolling
set scrolloff=4

" Set working directory automatically
set autochdir

" Searching
set ignorecase
set smartcase
set incsearch
set nohlsearch


""""""""""""
" Bindings "
""""""""""""

" Quick esc
inoremap jk <esc>

" Semicolon to do colon commands
nnoremap ; :
nnoremap ;; ;
vnoremap ; :
vnoremap ;; ;

" Use j and k like a human on wrapped lines
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" Cycle through tabs
noremap <F7> :tabprev<CR>
noremap <F8> :tabnext<CR>

nnoremap <F10> :!make<CR>

" Clear highlight search
nnoremap <silent> <F2> :nohl<CR><F2>

" Easier leader
map <space> <leader>
map <space> <leader>

" Scroll using arrow keys
noremap <Up> 2<C-y>
noremap <Down> 2<C-e>


" Copy and paste
nnoremap <leader>c "+y
vnoremap <leader>c "+y
nnoremap <leader>v "+p
nnoremap <leader>V "+P

" Splits for emacs haters
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" Doesn't work
nnoremap <S-Up> <C-W>-
nnoremap <S-Down> <C-W>+
nnoremap <S-Left> <C-W><
nnoremap <S-Right> <C-W>>


""""""""
" gVim "
""""""""

" non-freeeeeeeeee
if has("win32")
	set guifont=DejaVu_Sans_Mono:h12:cANSI
	set backspace=2
endif

" Hide menu and toolbars
set guioptions-=m
set guioptions-=T
set guioptions-=r


"""""""""
" Vimrc "
"""""""""

autocmd BufWritePost $MYVIMRC source $MYVIMRC


" This is really dirty; takes a line like
"       'hello\\world\thow are you?'
" and puts
" hello\world	how are you?
" onto the XA_CLIPBOARD (for which there are mappings above)
nnoremap <f3> :.w !python3 -c 'print(__import__("sys").stdin.buffer.read().decode("unicode_escape").strip()[1:-1])' <bar> xclip -selection clipboard<cr>

inoremap ;w <esc>:w<cr>
