set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set incsearch
set termguicolors
set scrolloff=8
set cmdheight=1
set colorcolumn=80


call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'neovim/nvim-lspconfig'
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

lua << EOF
require'lspconfig'.tsserver.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.sourcekit.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.jsonls.setup {
    commands = {
        Format = { 
            function()
                vim.lsp.buf.range_formatting({}, {0,0},{vim.fn.line("$"),0})
            end
        }
    }
}
require'lspconfig'.gopls.setup{}
EOF

let mapleader = " "
nnoremap <leader>w <C-w>
