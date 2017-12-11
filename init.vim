" neovim/vim config

"""""""""""""""""""""
"  Base Settings    " 
"""""""""""""""""""""
set termguicolors
set nocompatible
set number
set relativenumber
syntax on
filetype on
filetype plugin on
filetype indent on
set autoindent
set modeline
set cursorline
" set cursorcolumn

set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set showmatch
set matchtime=0
set nobackup
set nowritebackup
set directory=~/.nvim/.swapfiles//

"""""""""""""""""""""
"       Plugin      " 
"""""""""""""""""""""
call plug#begin()
" base16 support
Plug 'chriskempson/base16-vim'
" Vim airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Auto Complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/neoinclude.vim'
" Snippet
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Vim Surround
Plug 'tpope/vim-surround'
" GOYO
Plug 'junegunn/goyo.vim'
" Markdown support
Plug '/plasticboy/vim-markdown' 
" Latex Support
Plug '/lervag/vimtex'
" VimWiki
Plug 'vimwiki/vimwiki', { 'branch' : 'dev' }
call plug#end()

"""""""""""""""""""""
"  Plugin Setting   " 
"""""""""""""""""""""
" base16 theme
colorscheme base16-gruvbox-dark-hard
" AutoComplete config
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
" Ultisnippet config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
" vimwiki config
let g:vimwiki_list = [{'path': '~/.vimwiki',
					 \ 'syntax' : 'markdown', 'ext': '.md'}]
