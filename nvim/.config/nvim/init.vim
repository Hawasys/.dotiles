call plug#begin()

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'matze/vim-move'
Plug 'sk1418/Join'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:livepreview_previewer = 'okular'

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set background=dark
colorscheme palenight

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smartindent
:nnoremap <silent> <C-s> :wqa % <CR>

:nnoremap <silent> <tab><Up> :resize +2<CR> 
:nnoremap <silent> <tab><Down> :resize -2<CR>
:nnoremap <silent> <tab><Left> :vertical resize +2<CR>
:nnoremap <silent> <tab><Right> :vertical resize -2<CR>

set number
" Enable syntax highlighting
syntax on

