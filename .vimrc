set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/ZoomWin'

call vundle#end()
filetype plugin indent on

syntax on
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme desert
set incsearch
set hlsearch
set showcmd
set paste
set linebreak
map <S-Q> <nop>
set autoindent
set cindent
set ignorecase
set smartcase
set smarttab
set switchbuf=usetab,newtab
set foldmethod=syntax
set foldlevelstart=20
set tags=tags;

"newlines without insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"This opens a tag in a new tab
nmap <C-\> <C-w><C-]><C-w>T

"because we can't use fish
set shell=/bin/bash

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_max_diagnostics_to_display = 100
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Remap <C-w>z to zoom window
nnoremap <silent> <C-w>z :ZoomWin<CR>
