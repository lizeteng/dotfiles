" --------------- Plugins ---------------

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace'

call plug#end()

" --------------- General ---------------

set nocompatible

set number
set relativenumber
set backspace=indent,eol,start
set history=500
set showcmd
set showmode
set visualbell
set t_vb=
set autoread

set hidden

syntax on

filetype plugin on
filetype indent on

let g:mapleader = ';'

" --------------- Colors ---------------

syntax enable

set termguicolors
set background=dark

colorscheme dracula

" --------------- Files ---------------

set noswapfile
set nobackup
set nowritebackup

" --------------- Indentation ---------------

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set textwidth=120
set nowrap
set linebreak

" --------------- Completion ---------------

set wildmenu

" --------------- Scroll ---------------

set scrolloff=0
set sidescrolloff=0
set sidescroll=1

" --------------- Search ---------------

set incsearch
set hlsearch
set ignorecase
set smartcase

" --------------- Plugins config ---------------

" => airline

let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

<<<<<<< HEAD
nmap [b :bp<cr>
nmap ]b :bn<cr>

map <leader>1 :b 1<cr>
map <leader>2 :b 2<cr>
map <leader>3 :b 3<cr>
map <leader>4 :b 4<cr>
map <leader>5 :b 5<cr>
map <leader>6 :b 6<cr>
map <leader>7 :b 7<cr>
map <leader>8 :b 8<cr>
map <leader>9 :b 9<cr>

=======
>>>>>>> 3c13eeda0cba067c0641303b148d12513800f905
" => indent-guides

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" => nerdtree

<<<<<<< HEAD
=======
nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>T :NERDTreeFind<cr>
>>>>>>> 3c13eeda0cba067c0641303b148d12513800f905
let NERDTreeWinSize = 40
let NERDTreeWinPos = 'left'
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1

<<<<<<< HEAD
nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>T :NERDTreeFind<cr>

=======
>>>>>>> 3c13eeda0cba067c0641303b148d12513800f905
" => fzf

nmap <silent> <leader>f :Files<cr>
nmap <silent> <leader>F :Files!<cr>
nmap <silent> <leader>ht :History<cr>
nmap <silent> <leader>H :History!<cr>
nmap <silent> <leader>a :Ag<cr>
nmap <silent> <leader>A :Ag!<cr>

" => undotree

nmap <leader>U :UndotreeToggle<cr>
nmap <leader>u :earlier<cr>
nmap <leader>r :later<cr>

" => nerdcommenter

let g:NERDSpaceDelims = 1

" => vim-trailing-whitespace

map <leader><space> :FixWhitespace<cr>
