if empty(glob('~/.config/nvim/autoload/plug.vim'))
   silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall | source $MyVIMRC
endif

call plug#begin('~/.config/nvim/autoload')
Plug 'szw/vim-ctrlspace'
Plug 'szw/vim-tags'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --bin'}
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-fugitive'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'flazz/vim-colorschemes'
Plug 'rking/ag.vim'
Plug 'plasticboy/vim-markdown'
Plug 'vim-scripts/Tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Remap leader '\' to ','
let mapleader=","
" Vimwiki settings
let g:vimwiki_list = [ {'path':'~/vimwiki/markdown', 'syntax':'markdown', 'ext':'.md'} ]
" fzf settings
let g:fzf_action = { 'ctrl-s': 'split', 'ctrl-v':'v-split'}
nnoremap <c-p> :FZF<cr>
" ranger settings
let g:ranger_map_keys = 0
nnoremap <leader>x :Ranger<cr>
" Ag settings
let g:ackprg = 'ag --nogroup --nocolo --column'
let g:ag_working_path_mode="r"
" Markdown settings
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal = 0
" Airline settings
"Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the file name in the buffer list
let g:airline#extensions#tabline#fnamemod = ':t'
filetype plugin on
" Tab spacing requirements
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set noexpandtab

syntax on
" Support loading nvimrc
set exrc
" Allow buffers to be hidden
set hidden
" set g as default option
set gdefault
set mouse=a
" status line to show possible completion of commands, files, etc...
set wildmenu
" Auto reload files
set autoread
" Show line numbers
set number
" Show line under cursor
set cursorline
" show list of commands while typing
set showcmd
set statusline+=%F
set laststatus=2
" Highlight search results
set hlsearch
" Incremental search
set incsearch
" Allow backspace to delete end of line, indent, and status of line characters
set backspace=indent,eol,start

"Tab space visualization
set list
set listchars=tab:▸\ 
set tags =./tags;/
" Backup, swap, and undo directories
set backupdir=~/.config/nvim/backup/
set directory=~/.config/nvim/swap/
set undodir=~/.config/nvim/undo/

" Buffer switching
nnoremap <C-H> :bp <enter>
nnoremap <C-L> :bn <enter>
nnoremap <Leader>q :bd <enter>
nnoremap <Leader>z "+
"colorscheme Chasing_Logic
colorscheme molokai

