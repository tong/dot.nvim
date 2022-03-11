call plug#begin('~/.local/share/nvim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'dstein64/nvim-scrollview'
Plug 'sunjon/shade.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
"Plug 'karb94/neoscroll.nvim'

Plug 'ellisonleao/glow.nvim'

Plug 'folke/trouble.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'chr4/nginx.vim'
Plug 'tikhomirov/vim-glsl'

Plug 'pineapplegiant/spaceduck',
Plug 'pbrisbin/vim-colors-off'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

source $HOME/.config/nvim/plugin/airline.vim
source $HOME/.config/nvim/plugin/coc.vim
"source $HOME/.config/nvim/plugin/filetree.vim
source $HOME/.config/nvim/plugin/fugitive.vim
"source $HOME/.config/nvim/plugin/fzf.vim
source $HOME/.config/nvim/plugin/git-gutter.vim
source $HOME/.config/nvim/plugin/git-messenger.vim
source $HOME/.config/nvim/plugin/haxe.vim
source $HOME/.config/nvim/plugin/nerdcommenter.vim
source $HOME/.config/nvim/plugin/nerdtree.vim
source $HOME/.config/nvim/plugin/open-browser.vim
"source $HOME/.config/nvim/plugin/ranger.vim
source $HOME/.config/nvim/plugin/startify.vim
source $HOME/.config/nvim/plugin/snippets.vim
"source $HOME/.config/nvim/plugin/tabs.vim
"source $HOME/.config/nvim/plugin/taskwarrior.vim
source $HOME/.config/nvim/plugin/telescope.vim
source $HOME/.config/nvim/plugin/term.vim
"source $HOME/.config/nvim/plugin/treesitter.vim
"source $HOME/.config/nvim/plugin/twilight.vim
call plug#end()

