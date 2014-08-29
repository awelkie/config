set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

syntax on
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

"newlines without insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"because we can't use fish
set shell=/bin/bash

"yum install syntastic
