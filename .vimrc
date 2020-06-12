""""""""""""
" Vim-Plug "
""""""""""""

call plug#begin('~/.vim/plugged/')
Plug 'lervag/vimtex'
Plug 'chriskempson/base16-vim'
Plug 'derekelkins/agda-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'godlygeek/tabular'
Plug 'nelstrom/vim-visual-star-search'
Plug 'tpope/vim-surround'
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

" Fix backspace on some platforms
set backspace=indent,eol,start

" Make ~ an operator
set tildeop

" Tabs
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set tabpagemax=20

" Scrolling
set scrolloff=2

" Set working directory automatically
set autochdir

" Searching
set ignorecase
set smartcase
set incsearch
set nohlsearch

" Don't autocomplete from included files
set complete-=i

" Don't consider numbers starting with zero to be octal when inc/decrementing
set nrformats-=octal

""""""""""""
" Bindings "
""""""""""""

" Quick esc
inoremap jk <esc>

" Semicolon to do colon commands
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Use j and k like a human on wrapped lines
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" Cycle through tabs
noremap <F7> :tabprev<CR>
noremap <F8> :tabnext<CR>

noremap <F1> <Nop>

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

nnoremap <leader>w :only<cr>

" Doesn't work
nnoremap <S-Up> <C-W>-
nnoremap <S-Down> <C-W>+
nnoremap <S-Left> <C-W><
nnoremap <S-Right> <C-W>>

" Delete something, then select something else and use this to swap
vnoremap <C-X> <Esc>`.``gvP``P

""""""""
" gVim "
""""""""

if has("win32")
	set guifont=DejaVu_Sans_Mono:h12:cANSI
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

inoremap ;w<cr> <esc>:w<cr>

set wildignore+=*.pdf,*.o,*.obj,*.jpg,*.png,*.agdai
set wildmenu

set display+=lastline

