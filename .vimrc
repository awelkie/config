syntax on
set nocompatible
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme torte
set incsearch
set hlsearch
set showcmd
set paste
set linebreak
map <S-Q> <nop>
set autoindent
set cindent
set smarttab
set switchbuf=usetab,newtab
set foldmethod=syntax
set foldlevelstart=20
set tags=tags;

"newlines without insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"hilight trailing whitespace
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+\%#\@<!$/

"because we can't use fish
set shell=/bin/bash

"yum install syntastic
