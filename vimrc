set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'wincent/Command-T'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-scripts/vcscommand.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'juneedahamed/svnj.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/functionlist.vim'
Plugin 'vim-scripts/Tagbar'
Plugin 'kien/ctrlp'
Plugin 'rgbroulreff/bclose.vim'
call vundle#end()
filetype plugin indent on

syntax on
set foldmethod=indent
set foldlevel=99

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set wildmenu

set number
set cursorline
set showcmd
set background=dark
"colorscheme solarized
set statusline+=%F
set laststatus=2
" Add highlighting for function definition in C++
function! EnhanceCppSyntax()
    syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
    hi def link cppFuncDef Special
endfunction

autocm Syntax cpp call EnhanceCppSyntax()

"nnoremap <M-J> /\v^(\w+\s+)?\w+::\w+\(.*\)
"nnoremap <M-K> ?\v^(\w+\s+)?\w+::\w+\(.*\)
