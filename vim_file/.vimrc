set so=7
" Set 120 character remind
let &colorcolumn="80,120"

" enables a paste mode in which autoindent is turned off
set pastetoggle=<F2>

set nocompatible
" filetype off
filetype on
filetype plugin on
filetype plugin indent on
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
set ai
set si
set smarttab
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set shiftwidth=4
set expandtab

set nobackup
set noswapfile

syntax enable
syntax on
colorscheme monokai

autocmd CompleteDone * pclose "关闭prv

" Enable ine numbers
set number

autocmd FileType xml,yaml set shiftwidth=2 | set expandtab
au BufNewFile,BufRead *.launch,*.world,*.urdf,*.srdf,*.xacro set filetype=xml

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Folding settings
set foldmethod=marker 
set foldmarker={,}
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" NerdTree setup
Bundle 'scrooloose/nerdtree'
map <F3> :NERDTreeToggle<CR>


" YouCompleteMe autocompletion
Bundle 'Valloric/YouCompleteMe'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_confirm_extra_conf=0
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_tags_files=1                 " 开启 YCM 基于标签引擎
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=1  "禁止缓存匹配项
let g:ycm_seed_identifiers_with_syntax=1
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

Bundle 'tpope/vim-fugitive'

Bundle 'FuzzyFinder'

Bundle 'L9'

"Bundle 'davidhalter/jedi-vim'

Bundle 'Lokaltog/vim-powerline'
"let g:Powerline_symbols = 'fancy'
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
set t_Co=256

