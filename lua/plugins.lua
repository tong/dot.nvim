local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'nvim-lua/plenary.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'lukas-reineke/lsp-format.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdcommenter'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'numToStr/Comment.nvim'

Plug 'lewis6991/gitsigns.nvim'

Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'petertriho/cmp-git'

Plug 'christoomey/vim-tmux-navigator'
Plug 'akinsho/toggleterm.nvim'

--Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'iamcco/markdown-preview.nvim'
Plug 'ellisonleao/glow.nvim'
Plug 'vimwiki/vimwiki'

Plug 'tong/vhx'

-- Syntax
Plug 'chr4/nginx.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'cakebaker/scss-syntax.vim'

vim.call('plug#end')
