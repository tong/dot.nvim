local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'christoomey/vim-tmux-navigator'

Plug 'nvim-lua/plenary.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'gpanders/editorconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'lukas-reineke/lsp-format.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'prettier/vim-prettier'

--Plug 'akinsho/toggleterm.nvim'
--Plug 'ziontee113/color-picker.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lewis6991/gitsigns.nvim'
Plug 'mhinz/vim-startify'
Plug 'nvim-lualine/lualine.nvim'
Plug 'folke/trouble.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'sunjon/shade.nvim'
Plug 'petertriho/nvim-scrollbar'
Plug 'folke/todo-comments.nvim'
Plug 'simrat39/symbols-outline.nvim'

-- Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'sudormrfbin/cheatsheet.nvim'

Plug 'numToStr/Comment.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'AndrewRadev/tagalong.vim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'David-Kunz/cmp-npm'
Plug 'petertriho/cmp-git'
-- Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'
-- Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-path'
Plug 'tong/cmp-haxelib'
Plug 'onsails/lspkind.nvim'

Plug 'L3MON4D3/LuaSnip'

Plug 'TimUntersberger/neogit'

Plug 'fatih/vim-go'
Plug 'tong/nvhx'

--Plug 'mfussenegger/nvim-dap'
--Plug 'rcarriga/nvim-dap-ui'

--Plug 'cakebaker/scss-syntax.vim'
--Plug 'chr4/nginx.vim'
Plug 'tikhomirov/vim-glsl'

Plug 'iamcco/markdown-preview.nvim'
Plug 'ellisonleao/glow.nvim'

Plug 'vimwiki/vimwiki'

Plug 'pwntester/octo.nvim' 
--Plugin 'dbeniamine/cheat.sh-vim'

vim.call('plug#end')
