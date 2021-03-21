call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'benwainwright/fzf-project'
Plug 'ojroques/nvim-lspfuzzy'
Plug 'ojroques/nvim-hardline'
Plug 'mhinz/vim-signify'
Plug 'leafgarland/typescript-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'joshdick/onedark.vim'
call plug#end()

filetype plugin indent on
syntax on

colorscheme onedark

source ~/.config/nvim/options.vim
source ~/.config/nvim/autocmd.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/lua.vim
source ~/.config/nvim/misc.vim

