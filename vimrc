set nocompatible
set hidden
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/Tagbar'
Plugin 'szw/vim-ctrlspace'
Plugin 'MattesGroeger/vim-bookmarks'
call vundle#end()
filetype plugin indent on

let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1
syntax on
set foldmethod=indent
set foldlevel=99

let g:ctrlp_map = '<c-t>'
let g:ctrlp_cmd = 'CtrlP'

set t_Co=256
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set noexpandtab
set wildmenu
set autoread
set number
set cursorline
set showcmd
set background=dark
set statusline+=%F
set laststatus=2
set list
set listchars=tab:\|\ 
set tags=./tags;/

" Add highlighting for function definition in C++
function! EnhanceCppSyntax()
    syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
    hi def link cppFuncDef Special
endfunction

autocmd Syntax cpp call EnhanceCppSyntax()
autocmd VimEnter * Tagbar
"nnoremap <M-J> /\v^(\w+\s+)?\w+::\w+\(.*\)
"nnoremap <M-K> ?\v^(\w+\s+)?\w+::\w+\(.*\)
