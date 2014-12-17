"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc based on that of Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
"
" Be sure to read the README!
"
" Shortcuts:
"   ; maps to :
"   ,a: ack from the current directory
"   ,c<space>: toggle comments
"   ,e: open file in new tab
"   ,l: toggle NERDTree
"   ,ig: toggle indentation guide
"   ,o: open file
"   ,hs: split window
"   ,vs: vsplit window
"   ,t: new tab
"   kj: enter normal mode and save
"   Ctrl+{h,j,k,l}: move among windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"long live vim
set encoding=utf-8
set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'

" plugins
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/trailing-whitespace'
Plugin 'majutsushi/tagbar'

" syntax files
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'

call vundle#end()

" indent-guide config
let g:indent_guides_guide_size = 1

" ctrlp config
let g:ctrlp_working_path_mode = 'c'

" turn off arrows NERDTREE
let g:NERDTreeDirArrows=0
" don't show .pyc,.o files
let NERDTreeIgnore = ['\.pyc$','\.o$']

" syntax highlighting and auto-indentation
syntax on
filetype plugin indent on
:inoremap # X<C-H>#
set ai
set si
set nu

" expand tabs to 2 spaces
set shiftwidth=2
set tabstop=2
set smarttab
set expandtab

" faster tab navigation
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>

" always show tab line to avoid annoying resize
set showtabline=2

" searching options
set incsearch
set showcmd
set ignorecase
set smartcase

" disable backups
set nobackup
set nowritebackup
set noswapfile

" font options
set background=dark
set t_Co=256
set gfn=Inconsolata:h14

" keep at least 5 lines below the cursor
set scrolloff=5

" window options
set showmode
set showcmd
set ruler
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set nonumber

" enable mouse support
set mouse=a

" better tab completion on commands
set wildmenu
set wildmode=list:longest

" close buffer when tab is closed
set nohidden

" better moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" shortcuts to common commands
let mapleader = ","
nnoremap <leader>a :Ack
nnoremap <leader>g :TagbarToggle<CR>
nnoremap <leader>e :tabnew<CR>:CtrlP<CR>
nnoremap <leader>l :NERDTreeToggle<CR>
nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>hs :split<CR>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>m :call ToggleMouse()<CR>
nnoremap <leader>. :CtrlPTag<CR>

nnoremap ; :
inoremap kj <Esc>:w<CR>

" more logical vertical navigation
nnoremap <silent> k gk
nnoremap <silent> j gj

" statusline
set laststatus=2
set statusline=%.20F "filename tail
set statusline+=\ %{strlen(&fileencoding)?&fileencoding:'none'} "file encoding
set statusline+=\ %{&fileformat} "file format
set statusline+=\ %{fugitive#statusline()} " current branch
set statusline+=%=
set statusline+=%c
set statusline+=\ %4l/%L

set ttymouse=xterm2
