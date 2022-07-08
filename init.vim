set exrc
set number relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nohlsearch
set hidden
set noerrorbells
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes

" Plugin manager: vim-plug

" Plugins will be downloaded under the specified directory.
call plug#begin()

" Declare the list of plugins.
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme gruvbox

let mapleader = " "
inoremap jk <esc>
inoremap kj <esc>

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup LAILANATER
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END
