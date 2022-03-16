call plug#begin('~/.local/share/nvim/plugged')

Plug 'editorconfig/editorconfig-vim'
"Plug 'dstein64/nvim-scrollview'
"Plug 'sunjon/shade.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
"Plug 'karb94/neoscroll.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'akinsho/toggleterm.nvim'
Plug 'preservim/nerdcommenter'
Plug 'tyru/open-browser.vim'
Plug 'ellisonleao/glow.nvim'
Plug 'folke/trouble.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'chr4/nginx.vim'
Plug 'tikhomirov/vim-glsl'

"Plug 'pbrisbin/vim-colors-off'

Plug 'neovim/nvim-lspconfig'
"Plug 'lukas-reineke/lsp-format.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'vimwiki/vimwiki'

Plug 'tong/vhx'

Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/git-messenger.vim'

source $HOME/.config/nvim/plugin/airline.vim
source $HOME/.config/nvim/plugin/coc.vim
"source $HOME/.config/nvim/plugin/fzf.vim
source $HOME/.config/nvim/plugin/nerdtree.vim
source $HOME/.config/nvim/plugin/startify.vim
source $HOME/.config/nvim/plugin/snippets.vim
"source $HOME/.config/nvim/plugin/taskwarrior.vim
source $HOME/.config/nvim/plugin/telescope.vim
"source $HOME/.config/nvim/plugin/twilight.vim
call plug#end()

lua << EOF
--require('haxe.compiler').setup()
EOF

let g:vimwiki_list = [{'path': '~/wiki/', 'syntax': 'markdown', 'ext': '.md'}]

lua << EOF
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}
EOF

