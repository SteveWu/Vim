if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"set nocompatible
set exrc 
set hidden
"Remapping leader key from default '\' to ','
let mapleader=","
call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/Tagbar'
Plug 'szw/vim-ctrlspace'
Plug 'rking/ag.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
call plug#end()


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
"set statusline+=%#warningmsg# set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 2

syntax on
set foldmethod=indent
set foldlevel=99
" Tab spacing requirements
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
" Backup, swap, and undo directories
set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//h> 
set undodir=~/.config/nvim/undo//

set secure
" Ranger Settings
let g:ranger_map_keys = 0
map <leader>x :Ranger<CR>


" Neovim terminal key binds
tnoremap <C-w><C-h> <C-\><C-n><C-w><C-h>
tnoremap <C-w><C-j> <C-\><C-n><C-w><C-j>
tnoremap <C-w><C-k> <C-\><C-n><C-w><C-k>
tnoremap <C-w><C-l> <C-\><C-n><C-w><C-l>
tnoremap <F12> <C-\><C-n>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert
