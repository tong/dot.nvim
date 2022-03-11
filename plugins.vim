call plug#begin('~/.local/share/nvim/plugged')

Plug 'ryanoasis/vim-devicons'

" -- Tools
Plug 'ellisonleao/glow.nvim'

" --- Textedit
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'sunjon/shade.nvim'

" Application
Plug 'editorconfig/editorconfig-vim'
Plug 'dstein64/nvim-scrollview'

Plug 'folke/trouble.nvim'
Plug 'nvim-lua/plenary.nvim'

" -- Syntax
Plug 'chr4/nginx.vim'
Plug 'tikhomirov/vim-glsl'

" --- Themes
Plug 'pineapplegiant/spaceduck',
Plug 'pbrisbin/vim-colors-off'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Plug 'karb94/neoscroll.nvim'

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

lua <<EOF
require'nvim-treesitter.configs'.setup {
-- One of "all", "maintained" (parsers with maintainers), or a list of languages
  --ensure_installed = "maintained",
  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,
  -- List of parsers to ignore installing
  --ignore_install = { "javascript" },
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    -- list of language that will be disabled
    --disable = { "c", "rust" },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    --additional_vim_regex_highlighting = false,
  },
}
EOF

"lua <<EOF
"require('neoscroll').setup()
"--zt(half_win_time[, easing])
"EOF

