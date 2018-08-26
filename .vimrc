" =============== Plugins ===============

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" =============== Basic ===============

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
set timeoutlen=1000
set ttimeoutlen=50
set hidden

syntax on

filetype plugin on
filetype indent on

let g:mapleader = ';'

"  => Colors

syntax enable

set termguicolors
set background=dark

colorscheme dracula
" colorscheme base16-oceanicnext

" => Files

set noswapfile
set nobackup
set nowritebackup

" => Indentation

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

" => Completion

set wildmenu

" => Scroll

set scrolloff=0
set sidescrolloff=0
set sidescroll=1

" => Search

set incsearch
set hlsearch
set ignorecase
set smartcase

" => Mappings

nmap <leader>w :w<cr>
nmap <leader>WQ :wa<cr>:q<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :qa!<cr>

" =============== Plugins config ===============

" => airline

let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

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

" => indent-guides

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" => nerdtree

let NERDTreeWinSize = 40
let NERDTreeWinPos = 'left'
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1

nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>T :NERDTreeFind<cr>

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

" => YouCompleteMe

set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1

" => nerdcommenter

let g:NERDSpaceDelims = 1

" => vim-trailing-whitespace

map <leader><space> :FixWhitespace<cr>

" => emmt-vim

let g:user_emmet_leader_key = '<c-e>'

" => ultisnips

let g:UltiSnipsExpandTrigger = '<leader><tab>'
