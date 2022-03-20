call plug#begin('~/.local/share/nvim/plugged')

" -- Statusline
"Plug 'nvim-lualine/lualine.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'feline-nvim/feline.nvim' " TODO test

Plug 'nvim-lua/plenary.nvim'
Plug 'editorconfig/editorconfig-vim'

" -- Visual
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
"Plug 'karb94/neoscroll.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'preservim/nerdcommenter'
Plug 'tyru/open-browser.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'folke/trouble.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'ellisonleao/glow.nvim'

" -- Syntax
Plug 'chr4/nginx.vim'
Plug 'tikhomirov/vim-glsl'

" -- Language
Plug 'SirVer/ultisnips'  " https://github.com/SirVer/ultisnips
Plug 'honza/vim-snippets'  " https://github.com/honza/vim-snippets
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" -- Tools
Plug 'vimwiki/vimwiki'

" -- Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
Plug 'rhysd/git-messenger.vim'

" -- Themes
Plug 'EdenEast/nightfox.nvim'
Plug 'pbrisbin/vim-colors-off'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" -- Tools
Plug 'vimwiki/vimwiki'

" -- 
Plug 'tong/vhx'
"Plug 'tong/void'

source $HOME/.config/nvim/plugin/coc.vim
source $HOME/.config/nvim/plugin/startify.vim
call plug#end()


" -- Airline ---------------------------------------------------------------
let g:airline_powerline_fonts = 1
"let g:airline_statusline_ontop=1 
"let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_theme='base16'
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"
"autocmd VimEnter :AirlineTheme luna<AR>


" -- Glow -------------------------------------------------------
let g:glow_style = "dark"


" -- Markdown Preview -------------------------------------------------------
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
"let g:mkdp_refresh_slow = 0
let g:mkdp_port = '11220'


" -- NERDTree --------------------------------------------------------------
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

nnoremap <C-t> :NERDTreeToggle<CR>                               
"noremap <leader>n :NERDTreeToggle<CR>                                           
"noremap <leader>N :NERDTree<CR>                                                 
"noremap <leader>b :NERDTreeFind<CR>

autocmd BufEnter NERDTree* | execute 'normal R'

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
                                \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree')
    "\ && b:NERDTree.isTabTree() | quit | endif


" -- Snippets --------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" -- Vimwiki ----------------------------------------------------------------
let g:vimwiki_list = [{'path': '~/wiki/', 'syntax': 'markdown', 'ext': '.md'}]



lua << EOF
-- Gitsigns ---------------------------------------------------------------
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
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 700,
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

-- Nightfox  ---------------------------------------------------------------
require('nightfox').setup {
  options = {
    -- Compiled file's destination location
    --compile_path = util.join_paths(vim.fn.stdpath("cache"), "nightfox"),
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*)
    dim_inactive = true,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  }
}

-- Symbols Outline  ----------------------------------------------------------
vim.g.symbols_outline = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false,
    position = 'right',
    relative_width = true,
    width = 16,
    auto_close = false,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    preview_bg_highlight = 'Pmenu',
    keymaps = { -- These keymaps can be a string or a table for multiple keys
        close = {"<Esc>", "q"},
        goto_location = "<Cr>",
        focus_location = "o",:q
        hover_symbol = "<C-space>",
        toggle_preview = "K",
        rename_symbol = "r",
        code_actions = "a",
    },
    lsp_blacklist = {},
    symbol_blacklist = {},
    symbols = {
        File = {icon = "", hl = "TSURI"},
        Module = {icon = "", hl = "TSNamespace"},
        Namespace = {icon = "", hl = "TSNamespace"},
        Package = {icon = "", hl = "TSNamespace"},
        Class = {icon = "𝓒", hl = "TSType"},
        Method = {icon = "ƒ", hl = "TSMethod"},
        Property = {icon = "", hl = "TSMethod"},
        Field = {icon = "", hl = "TSField"},
        Constructor = {icon = "", hl = "TSConstructor"},
        Enum = {icon = "ℰ", hl = "TSType"},
        Interface = {icon = "ﰮ", hl = "TSType"},
        Function = {icon = "", hl = "TSFunction"},
        Variable = {icon = "", hl = "TSConstant"},
        Constant = {icon = "", hl = "TSConstant"},
        String = {icon = "𝓐", hl = "TSString"},
        Number = {icon = "#", hl = "TSNumber"},
        Boolean = {icon = "⊨", hl = "TSBoolean"},
        Array = {icon = "", hl = "TSConstant"},
        Object = {icon = "⦿", hl = "TSType"},
        Key = {icon = "🔐", hl = "TSType"},
        Null = {icon = "NULL", hl = "TSType"},
        EnumMember = {icon = "", hl = "TSField"},
        Struct = {icon = "𝓢", hl = "TSType"},
        Event = {icon = "🗲", hl = "TSType"},
        Operator = {icon = "+", hl = "TSOperator"},
        TypeParameter = {icon = "𝙏", hl = "TSParameter"}
    }
}

-- Troublw  ----------------------------------------------------------
require("trouble").setup {}

-- Void ----------------------------------------------------------
--require("void").setup {}



EOF

