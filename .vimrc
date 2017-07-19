""""""""""""
" Vim-Plug "
""""""""""""

call plug#begin('~/.vim/plugged/')
Plug 'lervag/vimtex'
Plug 'NLKNguyen/papercolor-theme'
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

set hlsearch


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
nnoremap <silent> <leader>l :nohl<CR><leader>l

" Easier centering
nnoremap <space> zz

" Scroll using arrow keys
noremap <Up> 2<C-y>
noremap <Down> 2<C-e>


" Copy and paste
nnoremap <leader>c "+y
vnoremap <leader>c "+y
nnoremap <leader>v "+p
nnoremap <leader>V "+P

" Splits for emacs haters
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


""""""""
" gVim "
""""""""

if has("win32")
	set guifont=DejaVu_Sans_Mono:h12:cANSI
	set backspace=2
endif

" Hide menu and toolbars
set guioptions-=m
set guioptions-=T
set guioptions-=r
