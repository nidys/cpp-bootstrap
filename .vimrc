"First do this manually:
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

"Vundle setup
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'junegunn/fzf'
Plugin 'kien/ctrlp.vim'
"Plugin 'tpope/vim-fugitive'
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
set nowrap
syntax on
set nohlsearch
nnoremap ; :

"set shell=/bin/bash\ -i

let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:ctrlp_max_files=20000
let g:ctrlp_custom_ignore='.git$|\tmp$'
let g:ctrlp_match_window = 'results:100'
"c-k c-j to scroll

" \b - method list toggle
nnoremap <Leader>b :TagbarToggle<CR>

" ctrl+s - save
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>a
" comment
nnoremap <Leader><c> :<Leader>c<space><CR>
"\r open nerdtree and find curr path
nnoremap <Leader>r :NERDTreeFind<CR>
" eclipe ctrl+o
inoremap <C-o> :CtrlPBufTag<CR>
nnoremap <C-o> :CtrlPBufTag<CR>
" eclipse ctrl+shift+r
nnoremap <C-S-R> :CtrlPTag<CR>
inoremap <C-S-R> :CtrlPTag<CR>
" F3 jump to definition
nnoremap <F3> :cs find g <C-R>=expand("<cword>")<CR><CR>
"jump back
"map <Esc>[[1;3D :CtrlP<CR>
"shift+U redo
nnoremap <S-U> :redo<CR>

"disabled becaude switching between buffers
"nnoremap <C-w> :bd<CR>

" MOVE LINE/BLOCK
nnoremap <C-S-J> :m+<CR>==
nnoremap <C-S-K> :m-2<CR>==
inoremap <C-S-J> <Esc>:m+<CR>==gi
inoremap <C-S-K> <Esc>:m-2<CR>==gi
vnoremap <C-S-J> :m'>+<CR>gv=gv
vnoremap <C-S-K> :m-2<CR>gv=gv

" show pressed keys in lower right corner
set showcmd


