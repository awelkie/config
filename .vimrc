set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'benekastah/neomake'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Numkil/ag.nvim'
Plugin 'rust-lang/rust.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'lervag/vimtex'
"Plugin 'davidhalter/jedi-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/vim-asterisk'
Plugin 'wellle/targets.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'triglav/vim-visual-increment'
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-scripts/sudo.vim'

call vundle#end()
filetype plugin indent on

set rtp+=~/.fzf

syntax on
set tabstop=4
set shiftwidth=4
colorscheme desert
set incsearch
set hlsearch
set showcmd
set linebreak
map <S-Q> <nop>
set autoindent
set cindent
set ignorecase
set smartcase
set smarttab
"set switchbuf=usetab,newtab
set foldmethod=syntax
set foldlevelstart=20
set tags=tags;
set expandtab
set mouse=a
set noswapfile

"newlines without insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"This opens a tag in a new tab
nmap <C-\> <C-w><C-]><C-w>T

"because we can't use fish
set shell=/bin/bash

" Mappings for incsearch plugin
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Mappings for vim-asterisk plugin
" These use the 'stay' versions of the commands
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)

let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_max_diagnostics_to_display = 100
let g:ycm_confirm_extra_conf = 0
nnoremap gd :YcmCompleter GoTo<CR>

autocmd! BufWritePost * Neomake

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

let g:jedi#completions_command = "<C-N>"
let g:airline_powerline_fonts = 1
