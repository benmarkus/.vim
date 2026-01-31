"=== VIM SETTINGS ===================================="

unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

syntax enable
filetype plugin indent on
set hlsearch incsearch ignorecase
set number relativenumber
set encoding=UTF-8

if $COLORTERM == 'truecolor'
  set termguicolors
endif


let mapleader=","
nnoremap <leader>c :botright term<CR>

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'sainnhe/sonokai'
Plug 'airblade/vim-gitgutter'
Plug 'lambdalisue/vim-fern'
call plug#end()

colorscheme sonokai
