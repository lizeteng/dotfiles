" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" ----------vim-plug----------
call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sjl/gundo.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'marijnh/tern_for_vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" ----------Vim基本配置---------
" 快捷键前缀，即<Leader>
let mapleader=";"
" 支持真彩色
set termguicolors
" 使用molokai配色
colorscheme molokai
" 启用语法高亮
syntax on
" 显示行数
set number
" 启用相对行号
set relativenumber
" 显示光标当前位置
set ruler
" 折行
set wrap
" 实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 有一个大写字母，则切换到大小写敏感查找
set smartcase
" 高亮搜索结果
set hlsearch
" 删除键绕过行首，行内缩进继续删除
set backspace=2
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" ----------自定义快捷键----------
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 退出vim
nmap <Leader>q :q<CR>
" 不做任何保存，直接退出vim
nmap <Leader>Q :qa!<CR>
" 向下插入一行
nmap <Leader>o o
" 向上插入一行
nmap <Leader>O O
" 定义快捷键在结对符之间跳转
" nmap <Leader>j %

" ----------airline----------
" 设置airline主题
let g:airline_theme = 'molokai'
" 设置airline字体
let g:airline_powerline_fonts = 1
" 打开tabline功能,方便查看Buffer和切换
let g:airline#extensions#tabline#enabled = 1
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" 映射<leader>num到num buffer
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>
" 路径格式
let g:airline#extensions#tabline#formatter = 'unique_tail'

" ----------nerdtree----------
" 使用 NERDTree 插件查看工程文件。
nmap <Leader>tf :NERDTreeFind<CR>
nmap <Leader>tt :NERDTreeToggle<CR>
" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize = 30
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos = 'right'
" 显示隐藏文件
let NERDTreeShowHidden = 1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI = 1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer = 1

" ----------indent-guides----------
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup = 1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level = 2
" 色块宽度
let g:indent_guides_guide_size = 1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" ----------fzf----------
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>F :Files!<CR>
nnoremap <silent> <Leader>ht :History<CR>
nnoremap <silent> <Leader>H :History!<CR>
nnoremap <silent> <Leader>a :Ag<CR>
nnoremap <silent> <Leader>A :Ag!<CR>

" ----------gundo----------
" 打开gundo界面快捷键
nnoremap <leader>g :GundoToggle<CR>
" python版本
let g:gundo_prefer_python3 = 1

" ----------YouCompleteMe----------
" 关闭函数原型预览窗口
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
" 补全后自动关闭预览窗口
let g:ycm_autoclose_preview_window_after_completion = 1

" css html 补全
let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\s{4}', 're!:\s+'],
    \   'html': [ '</' ],
    \ }

" ----------nerdcommenter----------
" 注释后面自动加空格
let g:NERDSpaceDelims = 1

" ----------vim-trailing-whitespace----------
" 去尾部空格快捷键
map <leader><space> :FixWhitespace<CR>

" ----------emmt-vim----------
"  快捷键设置
let g:user_emmet_leader_key = '<C-E>'

" ----------ultisnips----------
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger = '<leader><tab>'
let g:UltiSnipsJumpForwardTrigger = '<leader><tab>'
let g:UltiSnipsJumpBackwardTrigger = '<leader><s-tab>'
