call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'benwainwright/fzf-project'
Plug 'ojroques/nvim-lspfuzzy'
Plug 'leafgarland/typescript-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'wellle/targets.vim'
Plug 'jaredgorski/SpaceCamp'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'lambdalisue/suda.vim'
Plug 'cohama/lexima.vim'
Plug 'folke/lsp-trouble.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

filetype plugin indent on
syntax on

set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

hi! Normal ctermbg=NONE guibg=NONE

source ~/.config/nvim/options.vim
source ~/.config/nvim/autocmd.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/lua.vim
source ~/.config/nvim/misc.vim

