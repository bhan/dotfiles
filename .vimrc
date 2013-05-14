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
"   ,h: open a shell in a new tab
"   ,ig: toggle indentation guide
"   ,k: syntax-check the current file
"   ,m: toggle mouse support
"   ,p: toggle paste mode
"   ,o: open file
"   ,hs: split window
"   ,vs: vsplit window
"   ,t: new tab
"   ,w: close tab
"   kj: enter normal mode and save
"   Ctrl+{h,j,k,l}: move among windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"long live vim
set encoding=utf-8
set nocompatible

" vundle
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" plugins
Bundle 'tomtom/checksyntax_vim'

" color schemes
Bundle 'hukl/Smyck-Color-Scheme'
Bundle 'nanotech/jellybeans.vim'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/Skittles-Dark'
Bundle 'vim-scripts/wombat256.vim'

" plugins
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/trailing-whitespace'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-easymotion'

" syntax files
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'

" checksyntax config
let g:checksyntax#auto_mode = 0

" indent-guide config
let g:indent_guides_guide_size = 1

" ctrlp config
let g:ctrlp_working_path_mode = 'c'

" turn off arrows NERDTREE
let g:NERDTreeDirArrows=0

" syntax highlighting and auto-indentation
syntax on
filetype indent on
filetype plugin on
:inoremap # X<C-H>#
set ai
set si
set nu

" omg folding is the worst
set nofoldenable

" expand tabs to 4 spaces
set shiftwidth=4
set tabstop=4
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

" disable annoying beep on errors
set noerrorbells
if has('autocmd')
  autocmd GUIEnter * set vb t_vb=
endif

" font options
set background=dark
set t_Co=256
colorscheme smyck
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

" make copy/pasting nice
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=r
    else
        set mouse=a
    endif
endfunction

" shortcuts to common commands
let mapleader = ","
nnoremap <leader>a :Ack
nnoremap <leader>g :TagbarToggle<CR>
nnoremap <leader>e :tabnew<CR>:CtrlP<CR>
nnoremap <leader>h :tabnew<CR>:ConqueTerm bash<CR>
nnoremap <leader>l :NERDTreeToggle<CR>
nnoremap <leader>k :CheckSyntax<CR>
nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>p :set invpaste<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>hs :split<CR>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>w :tabclose<CR>
nnoremap <leader>m :call ToggleMouse()<CR>
nnoremap <leader>. :CtrlPTag<CR>

" ; is better than :, and kj is better than ctrl-c
nnoremap ; :

" also autosave when going to insert mode
inoremap kj <Esc>:w<CR>

" more logical vertical navigation
nnoremap <silent> k gk
nnoremap <silent> j gj

" statusline insert mode is blue
function! StatuslineInsertMode()
    hi statusline ctermbg=6
endfunction

" statusline normal mode is gray
function! StatuslineNormalMode()
    hi statusline ctermbg=240
endfunction
call StatuslineNormalMode()

" statusline visual mode is green
function! StatuslineVisualMode()
    hi statusline ctermbg=28
endfunction

" mode text
function! StatuslineModeText()
    let mode = mode()
    if mode == 'i'
        return 'INSERT'
    elseif mode == 'v'
        return 'VISUAL'
    else
        return 'NORMAL'
endfunction

" statusline
set laststatus=2
set statusline=%m\ %{StatuslineModeText()}\ %t\ %h%r%y\ %{fugitive#statusline()}\ %#error#%{&paste?'[paste]':''}%*%=%{strlen(&fenc)?&fenc:'none'}\ %{&ff}\ %P\ \L%l:\C%c

" insert mode
au InsertEnter * call StatuslineInsertMode()
au InsertLeave * call StatuslineNormalMode()

" visual mode
nnoremap <silent> v <ESC>:call StatuslineVisualMode()<CR>v
nnoremap <silent> V <ESC>:call StatuslineVisualMode()<CR>V
nnoremap <silent> <C-v> <ESC>:call StatuslineVisualMode()<CR><C-v>

" ctrl-c doesn't trigger insertleave, so manually switch statusline
map <C-c> <C-c>:call StatuslineNormalMode()<CR>
