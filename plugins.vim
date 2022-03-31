call plug#begin('~/.local/share/nvim/plugged')

" -- Statusline
"Plug 'nvim-lualine/lualine.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'feline-nvim/feline.nvim' " TODO test

Plug 'nvim-lua/plenary.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
"Plug 'karb94/neoscroll.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'preservim/nerdcommenter'
"Plug 'tpope/vim-surround'
Plug 'tyru/open-browser.vim'
"Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'folke/trouble.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'ellisonleao/glow.nvim'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 

" -- Filetree
Plug 'kyazdani42/nvim-tree.lua'

" -- Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" -- nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" -- Syntax
Plug 'chr4/nginx.vim'
Plug 'tikhomirov/vim-glsl'

" -- Language
"Plug 'SirVer/ultisnips'  " https://github.com/SirVer/ultisnips
"Plug 'honza/vim-snippets'  " https://github.com/honza/vim-snippets
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" -- Application
Plug 'vimwiki/vimwiki'
Plug 'soywod/himalaya', {'rtp':'vim'}

" -- Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
Plug 'rhysd/git-messenger.vim'

" -- Themes
Plug 'pbrisbin/vim-colors-off'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'

" -- Tools
Plug 'vimwiki/vimwiki'

" -- 
Plug 'tong/vhx'

"source $HOME/.config/nvim/plugin/coc.vim

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


" -- Glow -------------------------------------------------------
let g:glow_style = "dark"


" -- Markdown Preview -------------------------------------------------------
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
"let g:mkdp_refresh_slow = 0
let g:mkdp_port = '11220'
let g:mkdp_browser = 'chromium'


" -- Open Browser ----------------------------------------------------------
let g:openbrowser_browser_commands = [{ "name": "surf", "args": ["{browser}","{uri}"]}]
let g:openbrowser_search_engines = {
    \'duckduckgo': 'https://duckduckgo.com/?q={query}',
    \'fileformat': 'https://www.fileformat.info/info/unicode/char/{query}/',
    \'github': 'https://github.com/search?q={query}',
    \'google': 'https://google.com/search?q={query}',
    \'python': 'https://docs.python.org/dev/search.html?q={query}&check_keywords=yes&area=default',
    \'vim': 'https://www.google.com/cse?cx=partner-pub-3005259998294962%3Abvyni59kjr1&ie=ISO-8859-1&q={query}&sa=Search&siteurl=www.vim.org%2F#gsc.tab=0&gsc.q={query}&gsc.page=1',
    \'wikipedia': 'https://en.wikipedia.org/wiki/{query}',
    \}
let g:openbrowser_default_search = "duckduckgo"


" -- Snippets --------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" -- Vimwiki ----------------------------------------------------------------
let g:vimwiki_list = [{'path': '~/wiki/', 'syntax': 'markdown', 'ext': '.md'}]


" -- Himalaya
let g:himalaya_mailbox_picker = 'native' " | 'fzf' | 'telescope'

" ------------------------------------------------------------------------------

lua << EOF

vim.g.symbols_outline = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false,
    position = 'right',
    relative_width = true,
    width = 15,
    auto_close = false,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    preview_bg_highlight = 'Pmenu',
    keymaps = { -- These keymaps can be a string or a table for multiple keys
        close = {"<Esc>", "q"},
        goto_location = "<Cr>",
        focus_location = "o",
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
    inverse = {
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {},
  }
}

local cmp = require'cmp'
cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })
  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })
  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })
  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

require'nvim-tree'.setup {
    auto_close = false,
    auto_reload_on_write = true,
    disable_netrw = true,
    hide_root_folder = false,
    hijack_cursor = false,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = false,
    ignore_buffer_on_setup = false,
    open_on_setup = false,
    open_on_tab = false,
    sort_by = "name",
    update_cwd = false,
    view = {
        width = 28,
        height = 30,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        mappings = {
            custom_only = false,
            list = {
                -- user mappings go here
            },
        },
    },
    hijack_directories = {
        enable = true,
        auto_open = true,
    },
    update_focused_file = {
        enable = false,
        update_cwd = false,
        ignore_list = {},
    },
    ignore_ft_on_setup = {},
    system_open = {
        cmd = nil,
        args = {},
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    filters = {
        dotfiles = true,
        custom = {},
        exclude = {},
    },
    git = {
        enable = true,
        ignore = false,
        timeout = 400,
    },
    actions = {
        change_dir = {
            enable = false,
            global = false,
        },
        open_file = {
            quit_on_open = false,
            resize_window = false,
            window_picker = {
                enable = true,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                    filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                    buftype = { "nofile", "terminal", "help" },
                },
            },
        },
    },
    trash = {
        cmd = "trash",
        require_confirm = true,
    },
    log = {
        enable = false,
        truncate = false,
        types = {
            all = false,
            config = false,
            git = false,
        },
    }
}

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
    }
}

require("trouble").setup {
    auto_open = false,
    auto_close = true,
    auto_jump = false,
    use_diagnostic_signs = true
}

require("vhx").setup {
    haxe_bin = "haxe",
    server = {
        port = 9001,
        verbose = true
    } 
}

EOF

