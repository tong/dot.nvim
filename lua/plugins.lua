local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'christoomey/vim-tmux-navigator'

Plug 'nvim-lua/plenary.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'neovim/nvim-lspconfig'
Plug 'lukas-reineke/lsp-format.nvim'
Plug 'onsails/lspkind.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'gpanders/editorconfig.nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'David-Kunz/cmp-npm'
Plug 'petertriho/cmp-git'
-- Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'L3MON4D3/LuaSnip'

Plug 'nvim-telescope/telescope.nvim'
--Plug 'nvim-telescope/telescope-media-files.nvim'
--Plug 'nvim-telescope/telescope-fzf-native.nvim'

--Plug 'akinsho/toggleterm.nvim'
--Plug 'ziontee113/color-picker.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'folke/trouble.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'sunjon/shade.nvim'
Plug 'petertriho/nvim-scrollbar'
Plug 'simrat39/symbols-outline.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'goolord/alpha-nvim'
Plug 'rmagatti/goto-preview'
Plug 'folke/twilight.nvim'
Plug 'folke/which-key.nvim'
Plug 'AckslD/nvim-neoclip.lua'
-- Plug 'nvim-lua/popup.nvim'
Plug 'prettier/vim-prettier'
Plug 'ThePrimeagen/harpoon'
Plug 'sudormrfbin/cheatsheet.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'TimUntersberger/neogit'
Plug 'fatih/vim-go'
--Plug 'mfussenegger/nvim-dap'
--Plug 'rcarriga/nvim-dap-ui'
Plug 'iamcco/markdown-preview.nvim'
Plug 'ellisonleao/glow.nvim'
--
Plug 'cakebaker/scss-syntax.vim'
Plug 'tikhomirov/vim-glsl'
--Plug 'chr4/nginx.vim'

Plug 'vimwiki/vimwiki'

--Plugin 'dbeniamine/cheat.sh-vim'
Plug 'pwntester/octo.nvim'

Plug 'folke/tokyonight.nvim'
Plug 'navarasu/onedark.nvim'

Plug '~/dev/nvim/nvhx'
--Plug '~/dev/tool/nvim/nvim-cmp-haxelib'
--Plug '~/dev/tool/nvim/nvim-armory'

vim.call('plug#end')
