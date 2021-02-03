set guicursor=
set relativenumber
set nu
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set scrolloff=8
set smartindent
set nowrap
set nohlsearch
set incsearch
set termguicolors
set signcolumn=yes
set cmdheight=2

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'neomake/neomake'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'scrooloose/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let g:deoplete#enable_at_startup = 1
let g:neomake_python_enabled_makers = ['pylint']
hi HighlightedyankRegion cterm=reverse gui=reverse

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimming of trailing whitespace
let g:neoformat_basic_format_trim = 1

let mapleader = " "
nnoremap <Leader>w <C-w>
