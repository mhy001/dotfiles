" Don't act like vi
set nocompatible

" Turn on filetype and plugins
filetype plugin on

" Show line numbers and stuff
set number
set ruler
set nowrap

" Search/Match in file
set ignorecase
set smartcase
set hls

" Switching vim window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tabbing
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Show hidden char
set listchars=tab:▸\ ,eol:¬
set list

" Delete normally
set backspace=2

" Finding files, search subfolders and tab complete
set path+=**
set wildmenu

" netrw show tree
let g:netrw_liststyle=3

" Make things pretty
syntax on
colorscheme mirodark
highlight NonText ctermfg=darkgrey
highlight SpecialKey ctermfg=darkgrey
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.\+/

" Use system clipboard. For Windows
set clipboard=unnamed

