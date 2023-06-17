require("lazy").setup({

    "neovim/nvim-lspconfig",
    "lukas-reineke/lsp-format.nvim",
    'onsails/lspkind.nvim',
    'glepnir/lspsaga.nvim',

    'nvim-treesitter/nvim-treesitter',
    --'nvim-treesitter/playground',

    'David-Kunz/cmp-npm',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    -- 'hrsh7th/cmp-nvim-lsp-document-symbol',
    'hrsh7th/cmp-path',
    'hrsh7th/nvim-cmp',
    'petertriho/cmp-git',
    'saadparwaiz1/cmp_luasnip',
    'tamago324/cmp-zsh',

    {
        'L3MON4D3/LuaSnip',
        build = "make install_jsregexp"
    },

    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-media-files.nvim',
    --'nvim-telescope/telescope-file-browser.nvim',
    --'nvim-telescope/telescope-fzf-native.nvim',

    'AckslD/nvim-neoclip.lua',
    'AndrewRadev/tagalong.vim',
    --'ThePrimeagen/harpoon',
    'TimUntersberger/neogit',
    'christoomey/vim-tmux-navigator',
    'ellisonleao/glow.nvim',
    'folke/todo-comments.nvim',
    'folke/trouble.nvim',
    --'folke/twilight.nvim',
    'folke/which-key.nvim',
    'goolord/alpha-nvim',
    'gpanders/editorconfig.nvim',
    'iamcco/markdown-preview.nvim',
    'kyazdani42/nvim-tree.lua',
    --'kyazdani42/nvim-web-devicons',
    'nvim-tree/nvim-web-devicons',
    'lewis6991/gitsigns.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'norcalli/nvim-colorizer.lua',
    'numToStr/Comment.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-lualine/lualine.nvim',
    'petertriho/nvim-scrollbar',
    'prettier/vim-prettier',
    --'pwntester/octo.nvim',
    --'rmagatti/goto-preview',
    'romgrk/barbar.nvim',
    'simrat39/symbols-outline.nvim',
    'sindrets/diffview.nvim',
    'sudormrfbin/cheatsheet.nvim',
    --'sunjon/shade.nvim',
    'windwp/nvim-autopairs',
    'folke/zen-mode.nvim',
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

    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
    'mxsdev/nvim-dap-vscode-js',
    --'nvim-telescope/telescope-dap.nvim',

    --'fatih/vim-go',
    'phelipetls/vim-hugo',

    'cakebaker/scss-syntax.vim',
    'tikhomirov/vim-glsl',
    --'chr4/nginx.vim',

    --'vimwiki/vimwiki',

    'navarasu/onedark.nvim',

    { name="nvhx", dir="/home/tong/dev/nvim/nvhx/"},
    { name='nvim-twodark', dir="/home/tong/dev/nvim/nvim-twodark/"},
    --{ name='nvim-xmpp', dir="/home/tong/dev/nvim/nvim-xmpp/"},
    { name='nvim-mdview', dir="/home/tong/dev/nvim/nvim-mdview/"},
    --{ name='nvim-cmp-haxelib', dir="/home/tong/dev/nvim/nvim-cmp-haxelib"},
    { name="norc", dir="/home/tong/dev/nvim/nvim-norc/"},
    
    --
    "b0o/schemastore.nvim"
})
