" Vundle setup
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'gnattishness/cscope_maps'
Plugin 'bling/vim-airline'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdcommenter'

cal vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Indenting
set smarttab autoindent
set expandtab tabstop=2 shiftwidth=4

"other
set nu
syntax on
set nohlsearch
nnoremap ; :

set shell=/bin/bash\ -i

let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:ctrlp_max_files=20000
let g:ctrlp_custom_ignore='.git$|\tmp$'
"CtrlPClearAllCaches

nnoremap <Leader>b :TagbarToggle<CR>
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>a
nnoremap <Leader><c> :<Leader>c<space><CR>

" MOVE LINE/BLOCK
nnoremap <C-S-J> :m+<CR>==
nnoremap <C-S-K> :m-2<CR>==
inoremap <C-S-J> <Esc>:m+<CR>==gi
inoremap <C-S-K> <Esc>:m-2<CR>==gi
vnoremap <C-S-J> :m'>+<CR>gv=gv
vnoremap <C-S-K> :m-2<CR>gv=gv

" show pressed keys in lower right corner
set showcmd
