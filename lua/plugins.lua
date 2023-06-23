require("lazy").setup({
    { 'christoomey/vim-tmux-navigator' },
    { 'nvim-lua/plenary.nvim',         lazy = true },
    { 'nvim-tree/nvim-web-devicons',   lazy = true },
    {
        'hrsh7th/nvim-cmp',
        lazy = true,
        event = "InsertEnter",
        dependencies = {
            'David-Kunz/cmp-npm',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            -- 'hrsh7th/cmp-nvim-lsp-document-symbol',
            'hrsh7th/cmp-path',
            'petertriho/cmp-git',
            'saadparwaiz1/cmp_luasnip',
            'tamago324/cmp-zsh',
        }
    },
    {
        'L3MON4D3/LuaSnip',
        lazy = true,
        build = "make install_jsregexp"
    },
    {
        "neovim/nvim-lspconfig",
        lazy = true,
        dependencies = {
            "lukas-reineke/lsp-format.nvim",
            'onsails/lspkind.nvim',
            'glepnir/lspsaga.nvim',
            'folke/trouble.nvim',
        }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        --lazy = true,
        dependencies = {
            --'nvim-treesitter/playground',
        }
    },
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            'nvim-telescope/telescope-media-files.nvim',
            --'nvim-telescope/telescope-file-browser.nvim',
            --'nvim-telescope/telescope-fzf-native.nvim',
            'sudormrfbin/cheatsheet.nvim',
        }
    },
    {
        'mfussenegger/nvim-dap',
        lazy = true,
        dependencies = {
            'rcarriga/nvim-dap-ui',
            'theHamsta/nvim-dap-virtual-text',
            'mxsdev/nvim-dap-vscode-js',
            --'nvim-telescope/telescope-dap.nvim',
        }
    },
    {
        'goolord/alpha-nvim',
        lazy = true,
        event = "VimEnter",
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    { 'folke/which-key.nvim',          lazy = true },
    { 'simrat39/symbols-outline.nvim', lazy = true },
    { "b0o/schemastore.nvim",          lazy = true },
    --{ 'romgrk/barbar.nvim',                  lazy = true },
    { 'nvim-lualine/lualine.nvim',     lazy = true },
    { 'petertriho/nvim-scrollbar',     lazy = true },
    { 'gpanders/editorconfig.nvim',    lazy = true },
    {
        'norcalli/nvim-colorizer.lua',
        --lazy = true,
        opts = {
            '*',
            css = { rgb_fn = true, mode = 'background' },
            scss = { rgb_fn = true, mode = 'background' },
            -- RGB      = true;         -- #RGB hex codes
            -- RRGGBB   = true;         -- #RRGGBB hex codes
            -- names    = true;         -- "Name" codes like Blue
            -- RRGGBBAA = false;        -- #RRGGBBAA hex codes
            -- rgb_fn   = false;        -- CSS rgb() and rgba() functions
            -- hsl_fn   = false;        -- CSS hsl() and hsla() functions
            -- css      = false;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            -- css_fn   = false;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
            -- -- Available modes: foreground, background
            --mode     = 'background'; -- Set the display mode.
        }
    },
    { 'prettier/vim-prettier',               lazy = true },
    { 'windwp/nvim-autopairs',               lazy = true },
    { 'lewis6991/gitsigns.nvim',             lazy = true },
    { 'TimUntersberger/neogit',              lazy = true },
    { 'numToStr/Comment.nvim',               event = "BufEnter" },
    { 'folke/todo-comments.nvim',            event = "BufEnter" },
    { 'iamcco/markdown-preview.nvim',        ft = "markdown" },
    { 'ellisonleao/glow.nvim',               ft = "markdown" },
    { 'cakebaker/scss-syntax.vim',           ft = "scss" },
    { 'kyazdani42/nvim-tree.lua',            lazy = true },
    { 'sindrets/diffview.nvim',              lazy = true },
    { 'AndrewRadev/tagalong.vim',            lazy = true },
    { 'lukas-reineke/indent-blankline.nvim', lazy = true },
    { 'AckslD/nvim-neoclip.lua',             lazy = true },
    { 'phelipetls/vim-hugo',                 lazy = true },
    { 'navarasu/onedark.nvim',               lazy = true },
    {
        "folke/edgy.nvim",
        event = "VeryLazy",
        init = function()
            vim.opt.laststatus = 3
            vim.opt.splitkeep = "screen"
        end,
        opts = {
            bottom = {
                {
                    ft = "Trouble",
                    size = { height = 20 },
                    filter = function(buf) -- only show help buffers
                        return vim.bo[buf].buftype == "help"
                    end
                }
            },
            left = {
                {
                    ft = "NvimTree",
                    title = "Files",
                    pinned = true,
                    size = { height = 0.6 },
                },
                {
                    ft = "Outline",
                    pinned = true,
                    open = "SymbolsOutlineOpen",
                }
            }
        }
    },
    -- TODO: evaluate:
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        keys = {
            {
                "s",
                mode = { "n", "x", "o" },
                function()
                    -- default options: exact mode, multi window, all directions, with a backdrop
                    require("flash").jump()
                end,
            },
            {
                "S",
                mode = { "o", "x" },
                function()
                    require("flash").treesitter()
                end,
            },
        },
    },

    -- #######################################################

    --'ThePrimeagen/harpoon',
    --'folke/twilight.nvim',
    --'kyazdani42/nvim-web-devicons',
    --'pwntester/octo.nvim',
    --'rmagatti/goto-preview',
    --'sunjon/shade.nvim',
    --'folke/zen-mode.nvim',
    --'mg979/vim-visual-multi',
    --'mbbill/undotree',
    --'akinsho/toggleterm.nvim',
    --'nvim-lua/popup.nvim',
    --'ziontee113/color-picker.nvim',
    --'dbeniamine/cheat.sh-vim',
    --'ThePrimeagen/git-worktree.nvim',
    --'MunifTanjim/nui.nvim',
    --'folke/noice.nvim',
    --'rcarriga/nvim-notify',
    --'fatih/vim-go',
    --'tikhomirov/vim-glsl',
    --'chr4/nginx.vim',
    --'vimwiki/vimwiki',


    -- NOTE: HIGHLY EXPERIMENTAL!

    {
        name = "nvhx",
        dir = "/home/tong/dev/nvim/nvhx/",
        lazy = true,
        event = "BufEnter *.hx"
    },
    { name = 'nvim-twodark', dir = "/home/tong/dev/nvim/nvim-twodark/", lazy = true },
    {
        name = 'nvim-mdview',
        dir = "/home/tong/dev/nvim/nvim-mdview/",
        event = "BufEnter *.md"
    },
    {
        name = "norc",
        dir = "/home/tong/dev/nvim/nvim-norc/",
        --lazy = true,
        opts = {
            account = {
                node = "tong",
                domain = "lab.disktree.net"
            },
            ui = {
                roster = {

                }
            }
        }
    },
    --{ name='nvim-xmpp', dir="/home/tong/dev/nvim/nvim-xmpp/"},
    --{ name='nvim-cmp-haxelib', dir="/home/tong/dev/nvim/nvim-cmp-haxelib"},
})
