" ----------vim-plug----------

call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'easymotion/vim-easymotion'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
Plug 'marijnh/tern_for_vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier'

call plug#end()

" ----------Vim基本配置---------

" 快捷键前缀，即<Leader>
let mapleader = ';'
" 配色
colorschem molokai
" colorschem onedark
" 启用语法高亮
syntax on
" 支持真彩色
set termguicolors
" 背景色
set background=dark
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 标题栏显示文件名
set title
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
" 高亮搜索结果
set hlsearch
" 搜索时大小写不敏感
set ignorecase
" 有一个大写字母，则切换到大小写敏感查找
set smartcase
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
" 映射超时时长
set timeoutlen=1000
" 键码超时时长
set ttimeoutlen=100

" ----------自定义快捷键----------

" 将选中文本块复制至系统剪贴板
vmap <Leader>y "+y
" 将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p
" 保存当前窗口内容
nmap <Leader>w :w<CR>
" 保存所有窗口内容并退出 vim
nmap <Leader>W :wq<CR>
" 退出vim
nmap <Leader>q :q<CR>
" 不做任何保存，直接退出vim
nmap <Leader>Q :q!<CR>
" 定义快捷键在结对符之间跳转
nmap <Leader>j %

" ----------airline----------

" 设置airline主题
let g:airline_theme = 'molokai'
" let g:airline_theme = 'onedark'
" 路径格式
let g:airline#extensions#tabline#formatter = 'unique_tail'
" 设置airline字体
let g:airline_powerline_fonts = 1
" 打开tabline功能,方便查看Buffer和切换
let g:airline#extensions#tabline#enabled = 1
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nmap ]b :bn<CR>
nmap [b :bp<CR>
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

" ----------indent-guides----------

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup = 1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level = 2
" 色块宽度
let g:indent_guides_guide_size = 1

" ----------ale----------

" 格式化代码
let g:ale_fixers = {
    \ 'javascript': ['eslint'],
\ }
" 检查语法
let g:ale_linters = {
    \ 'javascript': ['eslint'],
\ }
" 保存时自动格式化代码
" let g:ale_fix_on_save = 1
" 保持侧边栏可见
let g:ale_sign_column_always = 1
" 改变错误和警告标识符
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
" 改变命令行消息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" 自定义跳转错误行快捷键
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ----------fzf----------

nmap <silent> <Leader>f :Files<CR>
nmap <silent> <Leader>F :Files!<CR>
nmap <silent> <Leader>ht :History<CR>
nmap <silent> <Leader>H :History!<CR>
nmap <silent> <Leader>a :Ag<CR>
nmap <silent> <Leader>A :Ag!<CR>

" ----------undotree----------

" 打开撤销树
nmap <Leader>U :UndotreeToggle<CR>
" 上一步
nmap <Leader>u :earlier<CR>
" 下一步
nmap <Leader>r :later<CR>

" ----------nerdtree----------

" 使用 NERDTree 插件查看工程文件。
nmap <Leader>t :NERDTreeToggle<CR>
nmap <Leader>T :NERDTreeFind<CR>
" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize = 30
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos = 'left'
" 显示隐藏文件
let NERDTreeShowHidden = 1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI = 1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer = 1

" ----------vim-trailing-whitespace----------

" 去尾部空格快捷键
map <leader><space> :FixWhitespace<CR>

" ----------nerdcommenter----------

" 注释后面自动加空格
let g:NERDSpaceDelims = 1

" ----------YouCompleteMe----------

" 关闭语法提示
let g:ycm_show_diagnostics_ui = 0
" 关闭函数原型预览窗口
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
" 补全后自动关闭预览窗口
let g:ycm_autoclose_preview_window_after_completion = 1
" 收集注释和字符变量值作为自动补全信息
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" css html 补全
let g:ycm_semantic_triggers = {
    \ 'css': ['re!^\s{4}', 're!:\s+'],
    \ 'html': ['</'],
\ }
" 白名单
let g:ycm_filetype_whitelist = {
    \ 'javascript.jsx': 1,
\ }

" ----------ultisnips----------

" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger = '<leader><tab>'
let g:UltiSnipsJumpForwardTrigger = '<leader><tab>'
let g:UltiSnipsJumpBackwardTrigger = '<leader><s-tab>'

" ----------emmt-vim----------

" 快捷键
let g:user_emmet_leader_key = '<C-E>'

" ----------vim-prettier----------

" 禁用quickfix
let g:prettier#quickfix_enabled =  0
" 禁用默认的自动格式
let g:prettier#autoformat = 0
" 在更改文本（TextChanged）、离开插入模式（InsertLeave）、保存之前（BufWritePre）异步运行
" autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
" prettier格式化规则
" 一行的最大长度
let g:prettier#config#print_width = 120
" 缩进：4空格
let g:prettier#config#tab_width = 4
" 禁用tab
let g:prettier#config#use_tabs = 'false'
" 插入分号
let g:prettier#config#semi = 'true'
" 使用单引号
let g:prettier#config#single_quote = 'true'
" 括号禁止插入空格
let g:prettier#config#bracket_spacing = 'false'
" jsx在最后一行插入>，而不是新起一行
let g:prettier#config#jsx_bracket_same_line = 'true'
" 箭头函数括号
let g:prettier#config#arrow_parens = 'always'
" 尾随逗号
let g:prettier#config#trailing_comma = 'all'
