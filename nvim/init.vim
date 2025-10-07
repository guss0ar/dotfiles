set number
set relativenumber
set cursorline
set numberwidth=4
autocmd InsertEnter * set norelativenumber
autocmd InsertLeave * set relativenumber

set ignorecase
set smartcase
set incsearch

set tabstop=6
set shiftwidth=6

set termguicolors
colorscheme monokai
set background=dark
syntax on

set noshowmode

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'm4xshen/autoclose.nvim'
Plug 'mg979/vim-visual-multi'

call plug#end()
