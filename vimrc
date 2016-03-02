set nocompatible
set hidden
filetype off
let mapleader=","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/Tagbar'
Plugin 'szw/vim-ctrlspace'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vimwiki/vimwiki'
Plugin 'itchyny/calendar.vim'
call vundle#end()
filetype plugin indent on

" Airline Configuration
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1

" Remapping of CtrlP to Ctrl+t
let g:ctrlp_map = '<c-t>'
let g:ctrlp_cmd = 'CtrlP'

" ag Configuration
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ag_working_path_mode="r"

" syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 2

" Vim-bookmarks configuration options
" let g:bookmark_auto_save_file="~/.vim-bookmarks-list"
syntax on
set foldmethod=indent
set foldlevel=99
set t_Co=256
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set noexpandtab
" statlus line to show possible completeion of commands, files. etc..
set wildmenu
"Auto reload files
set autoread
" Show line numbers
set number
" Show line under cursor
set cursorline
" show list of commands while typing
set showcmd
set background=dark
set statusline+=%F
set laststatus=2
"Highlight search results
set hlsearch
"Incrememtal search
set incsearch
" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Tab Space Visualization
set list
set listchars=tab:\|\ 
set tags=./tags;/


"autocmd VimEnter * Tagbar

" Support Calling ranger interface within VIM session
function RangerExplorer()
    exec "silent !ranger --choosefile=/tmp/vim_ranger_current_file " . expand("%:p:h")
	    if filereadable('/tmp/vim_ranger_current_file')
	        exec 'edit ' . system('cat /tmp/vim_ranger_current_file')
	        call system('rm /tmp/vim_ranger_current_file')
	    endif
	    redraw!
endfun
map <Leader>x :call RangerExplorer()<CR>
nnoremap <Leader>i :%s///g<CR>
