local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'christoomey/vim-tmux-navigator'

Plug 'nvim-lua/plenary.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'neovim/nvim-lspconfig'
Plug 'lukas-reineke/lsp-format.nvim'

Plug 'nvim-treesitter/nvim-treesitter'

--Plug 'akinsho/toggleterm.nvim'
--Plug 'ziontee113/color-picker.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lewis6991/gitsigns.nvim'
Plug 'mhinz/vim-startify'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/trouble.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'sunjon/shade.nvim'

--Plug 'numToStr/Comment.nvim'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'

--Plug 'mfussenegger/nvim-dap'
--Plug 'rcarriga/nvim-dap-ui'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'petertriho/cmp-git'
Plug 'onsails/lspkind.nvim'

--Plug 'iamcco/markdown-preview.nvim'
--Plug 'ellisonleao/glow.nvim'

--Plug 'chr4/nginx.vim'
--Plug 'tikhomirov/vim-glsl'
--Plug 'cakebaker/scss-syntax.vim'

--Plug 'tong/vhx'

Plug 'vimwiki/vimwiki'

--Plugin 'dbeniamine/cheat.sh-vim'

vim.call('plug#end')
