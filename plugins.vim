 call plug#begin('~/.local/share/nvim/plugged')

 " -- Statusline
"Plug 'nvim-lualine/lualine.nvim'
"Plug 'feline-nvim/feline.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
"Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
"Plug 'karb94/neoscroll.nvim'
"Plug 'RRethy/vim-illuminate'
Plug 'preservim/nerdcommenter'
"Plug 'tpope/vim-surround'
Plug 'tyru/open-browser.vim'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'folke/trouble.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'ellisonleao/glow.nvim'
Plug 'mhinz/vim-startify'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'kyazdani42/nvim-tree.lua'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'
"Plug 'SirVer/ultisnips'  " https://github.com/SirVer/ultisnips
"Plug 'honza/vim-snippets'  " https://github.com/honza/vim-snippets

" -- nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" -- Syntax
Plug 'chr4/nginx.vim'
Plug 'tikhomirov/vim-glsl'

" -- Language
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" -- Application
Plug 'vimwiki/vimwiki'
"Plug 'soywod/himalaya', {'rtp':'vim'}

" -- Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
Plug 'rhysd/git-messenger.vim'
"Plug 'sindrets/diffview.nvim'

" -- Themes
Plug 'pbrisbin/vim-colors-off'
"Plug 'shaunsingh/solarized.nvim'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"Plug 'EdenEast/nightfox.nvim'

Plug 'tong/vhx'
"Plug 'tong/mdview'

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
let g:mkdp_browser = 'chromium-app'


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
let g:vimwiki_list = [{'path': '~/doc/wiki/', 'syntax': 'markdown', 'ext': '.md'}]


" -- Himalaya
"let g:himalaya_mailbox_picker = 'native' " | 'fzf' | 'telescope'
"let g:himalaya_complete_contact_cmd = "khard email --remove-first-line --parsable '%s'"


" -- FZF
"let g:fzf_preview_window = ['right:50%', 'ctrl-/']


"------------------------------------------------------------------------------

lua << EOF


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
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
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
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

--require("trouble").setup {
--    auto_open = false,
--    auto_close = true,
--    auto_jump = false,
--    use_diagnostic_signs = true
--}

require('nvim-autopairs').setup{}

require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            "public"
        }
    }
}

require("vhx").setup {
    haxe_bin = "haxe",
    server = {
        port = 9001,
        verbose = true
    } 
}

--require("mdview").setup {}


EOF
