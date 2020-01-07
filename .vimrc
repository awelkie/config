call plug#begin('~/.local/share/nvim/plugged')

Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'haya14busa/vim-asterisk'
Plug 'haya14busa/incsearch.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'rust-lang/rust.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'michaeljsmith/vim-indent-object'
Plug 'wellle/targets.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Numkil/ag.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

syntax on
set tabstop=4
set shiftwidth=4
colorscheme desert
set incsearch
set hlsearch
set showcmd
set linebreak
set autoindent
set cindent
set ignorecase
set smartcase
set smarttab
set foldmethod=syntax
set foldlevelstart=20
set tags=tags;
set expandtab
set mouse=a
set noswapfile

"newlines without insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

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

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

let g:ale_linters = { 'rust': ['rls'] }
let g:ale_rust_rls_toolchain = 'stable'
" let g:ale_completion_enabled = 1

nn <silent> <M-d> :ALEGoToDefinition<cr>
nn <silent> <M-r> :ALEFindReferences<cr>
nn <silent> <M-a> :ALESymbolSearch<cr>
nn <silent> <M-h> :ALEHover<cr>

let g:ctrlp_user_command = 'fd --color=never "" %s'

let g:deoplete#enable_at_startup = 1
