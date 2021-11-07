let apleader = '\' " prefix key dùng để trigger các function hay event 
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10 " set croll line 
syntax on

set encoding=UTF-8
set mouse=a " enable mouse trong context của neovim 

set incsearch 
set hlsearch  " hightlight text khi search 

set tabstop=4 " space mỗi lần tab
set softtabstop=0
set shiftwidth=4
set background=dark

syntax enable
filetype plugin indent on

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=UTF-8

set clipboard=unnamed
set number
set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp
set autoread
set autowrite
set autoindent
set si "smart indent
syntax on

let g:coc_global_extensions = [
  \ 'coc-ultisnips',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-yaml',
  \ 'coc-highlight',
  \ 'coc-eslint',
  \ 'coc-git',
  \ 'coc-prettier',
  \ 'coc-flutter',
  \ 'coc-angular',
  \ 'coc-pyright',
  \ 'coc-webview',
  \ 'coc-java' ,
  \ ]

