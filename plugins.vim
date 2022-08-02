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
"Plug 'ap/vim-css-color'
Plug 'norcalli/nvim-colorizer.lua'
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
Plug 'romgrk/barbar.nvim'

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
Plug 'cakebaker/scss-syntax.vim'

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
Plug 'EdenEast/nightfox.nvim'

Plug 'tong/vhx'
"Plug 'tong/mdview'

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

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
"let g:glow_style = "dark"


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


--require("trouble").setup {
--    auto_open = false,
--    auto_close = true,
--    auto_jump = false,
--    use_diagnostic_signs = true
--}

--require("mdview").setup {}

EOF
