" utf-8编码
scriptencoding utf-8
set encoding=utf-8

let mapleader="`"
noremap <LEADER><CR> :nohlsearch<CR>
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set number

" 不与vi兼容
set nocompatible

" 语法高亮
syntax on
hi Search term=standout ctermfg=0 ctermbg=3


" 自动缩进
set autoindent
set list listchars=tab:>-,space:·

" tab键转化为空格
set expandtab

" tab转4个空格
set softtabstop=4

" 当前行高亮
set cursorline
hi CursorLine   cterm=NONE ctermbg=gray ctermfg=black

" 设置行宽
set textwidth=120

" 禁止生成临时文件
set nobackup
set noswapfile

nmap J 5j
nmap K 5k

"open at last exit line
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif 

let &t_SI .= "\<Esc>[5 q"
let &t_EI .= "\<Esc>[0 q"
