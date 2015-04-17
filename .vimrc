" vundle (must be installed first)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'

let mapleader = ","

" plugins
Plugin 'mileszs/ack.vim' " requires ack
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/trailing-whitespace'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'derekwyatt/vim-scala'
"Plugin ultisnips someday
if filereadable("/google/data/rw/users/bo/bohan/vimrc") " at Google
  source /google/data/rw/users/bo/bohan/vimrc
else " not at Google
  Plugin 'Valloric/YouCompleteMe'
endif

" syntax files
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'

call vundle#end()

" indent-guide config
let g:indent_guides_guide_size = 1

" ctrlp config
let g:ctrlp_working_path_mode = 'ra'

" NERDTree config
let g:NERDTreeDirArrows=0 " turn off arrows
let g:NERDTreeIgnore = ['\.class','\.pyc$','\.o$'] " hide certain files

" YouCompleteMe config
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_file_blacklist = {
  \ 'c' : 1
  \}

" vim-airplane config
let g:airline_theme = 'understated'

" change popup menu style
highlight Pmenu ctermfg=white ctermbg=blue

set encoding=utf-8
set nocompatible
syntax on
set lazyredraw

" expand tabs to 2 spaces
set shiftwidth=2
set tabstop=2
set smarttab
set expandtab
set softtabstop=2

" faster tab navigation
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>

set showtabline=1 " show tab line iff >1 tabs

" searching options
set incsearch
set hlsearch
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

set scrolloff=5 " keep at least 5 lines below the cursor

" window options
set showmode
set showcmd
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set nonumber

set mouse=a " enable mouse support

" better tab completion on commands
set wildmenu
set wildmode=list:longest

set nohidden " close buffer when tab is closed

" Ctrl hkjl to move between windows
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" shortcuts to common commands
nnoremap <leader>a :Ack
nnoremap <leader>g :TagbarToggle<CR>
nnoremap <leader>l :NERDTreeToggle<CR>
nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>hs :split<CR>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>, :nohlsearch<CR> " clear search highlight

" more logical vertical navigation
nnoremap <silent> k gk
nnoremap <silent> j gj

set ttymouse=xterm2

source ~/dotfiles/.vimrc.tiny
