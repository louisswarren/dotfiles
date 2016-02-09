"""""""""
" Misc. "
"""""""""

filetype plugin on
let g:tex_flavor='latex'


""""""""""""""
" Appearance "
""""""""""""""

" Colorscheme
syntax enable
set background=dark
colorscheme solarized

set cursorline
set number

set hlsearch


"""""""""""""""
" Visual Cues "
"""""""""""""""

" Colour in a column on the right side
let &colorcolumn=join(range(81,84),",")

" Highlight trailing whitespace
highlight TrailingWhitespace ctermbg=magenta guibg=#382424
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

" Scrolling
set scrolloff=4

" Set working directory automatically
set autochdir

" Searching
set ignorecase
set smartcase
set incsearch


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

" Cycle through tabs
noremap <F7> :tabprev<CR>
noremap <F8> :tabnext<CR>

nnoremap <F10> :!make<CR>

" Clear highlight search
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Easier centering
nnoremap <space> zz

" Scroll using arrow keys
noremap <Up> 2<C-y>
noremap <Down> 2<C-e>


""""""""
" gVim "
""""""""

set guifont=DejaVu_Sans_Mono:h12:cANSI
set backspace=2

" Hide menu and toolbars
set guioptions-=m
set guioptions-=T

set columns=88
