set number
set ruler
set hls
set nowrap
set ignorecase
set smartcase
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set listchars=tab:▸\ ,eol:¬
set list
set backspace=2
syntax on
colorscheme mirodark
highlight NonText ctermfg=darkgrey
highlight SpecialKey ctermfg=darkgrey
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.\+/
