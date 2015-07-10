set nocompatible
filetype off
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
"搜索逐字符高亮
set hlsearch
set incsearch
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
set expandtab
syntax on
syntax enable
colorscheme monokai
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Set 80 character remind
set colorcolumn=81

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here

" Fugitive setup
Bundle 'tpope/vim-fugitive'

" NerdTree setup
Bundle 'scrooloose/nerdtree'
map <F3> :NERDTreeToggle<CR>

" Python mode
Bundle 'klen/python-mode'

" Enable ine numbers
set number

" YouCompleteMe autocompletion
Bundle 'Valloric/YouCompleteMe'

"More things
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Lokaltog/vim-powerline'
"let g:Powerline_symbols = 'fancy'
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
set t_Co=256


