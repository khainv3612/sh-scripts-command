" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" ###################################################################################
call plug#begin('~/.config/nvim/bundle')
"tất cả các plugin phải nằm giữa hai hàm này plug#begin và plug#end
Plug 'scrooloose/nerdtree' "trình quản lý file giống như trong hình của mình
Plug 'morhetz/gruvbox' 

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'doums/darcula'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'trietphm/nerdtree-ag'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'othree/html5.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'honza/vim-snippets'
Plug 'artur-shaik/vim-javacomplete2'
" Buffer line
Plug 'akinsho/bufferline.nvim'

" Lua line
Plug 'hoob3rt/lualine.nvim'

" For showing pictogram
Plug 'onsails/lspkind-nvim'

" Show color on hex text
Plug 'norcalli/nvim-colorizer.lua'

" Show git information
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


call plug#end()

colorscheme darcula


