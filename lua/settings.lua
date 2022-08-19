local g = vim.g
local o = vim.o
local opt = vim.opt
local api = vim.api

vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')

o.belloff = "all"
o.completeopt = "menu,menuone,noinsert,noselect"
-- o.autoindent = true
-- o.smarttab = true
--o.timeoutlen = 500
o.colorcolumn = '+1' 
o.cindent = true
o.clipboard = 'unnamedplus'
o.completeopt='menu,menuone,noinsert,noselect'
o.cursorline = true
o.encoding = 'utf-8'
o.equalalways = false
o.expandtab = true
o.hidden = true
o.history = 50
o.ignorecase = true
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
o.relativenumber = false
o.number = true
--o.numberwidth = 6
o.wrap = false
o.ruler = true
o.scrolloff = 12
o.shell = 'zsh' 
o.shiftwidth = 0
o.showcmd = true
o.showmatch = true
o.showmode = false
o.signcolumn = 'yes'
o.smartcase = true
o.smartindent = true
o.softtabstop = -1
o.spell = false
o.tabstop = 4
o.termguicolors = true
o.textwidth = 80
o.title = true
--o.titlestring = "%f%(\ [%M]%)¬"
o.updatetime = 1000
o.wildmenu = true
--o.wildignore = { "*.o", "*~", "*.pyc", "*pycache*" }
o.wildmode = "longest:full"
o.wildoptions = "pum"
o.wrap = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

opt.mouse = "a"

-- Preserve view while jumping
--o.jumpoptions = 'view'

-- Better folds (don't fold by default)
-- o.foldmethod = 'indent'
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1

vim.cmd('colorscheme $COLORTHEME')

vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=200}')

-- vim.cmd('command Pretty lua vim.lsp.buf.formatting()')

vim.cmd('autocmd BufReadCmd *.jpg silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.jpg bdelete')
vim.cmd('autocmd BufReadCmd *.jpeg silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.jpeg bdelete')
vim.cmd('autocmd BufReadCmd *.gif silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.gif bdelete')
vim.cmd('autocmd BufReadCmd *.mp4 silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.mp4 bdelete')
vim.cmd('autocmd BufReadCmd *.pdf silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.pdf bdelete')
vim.cmd('autocmd BufReadCmd *.png silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.png bdelete')
vim.cmd('autocmd BufReadCmd *.webm silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.webm bdelete')
vim.cmd('autocmd BufReadCmd *.webp silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.webp bdelete')

vim.cmd('autocmd BufReadCmd *.ttf silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.ttf bdelete')
vim.cmd('autocmd BufReadCmd *.woff silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.woff bdelete')
vim.cmd('autocmd BufReadCmd *.woff2 silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.woff2 bdelete')

-- GUI

--opt.guifont='JetBrainsMono Nerd Font:h9'
--opt.guicursor='a:blinkwait1500-blinkoff1500-blinkon1500,n:block,i:ver25,v:block,c:ver25-blinkwait175-blinkoff150-blinkon175'

--vim.cmd('let g:neovide_transparency=0.95')
--vim.cmd('let g:neovide_cursor_vfx_mode="ripple"')

if vim.g.neovide then
    --vim.g.neovide_cursor_trail_legnth = 0
    --vim.g.neovide_cursor_animation_length = 0
    --
    --
    vim.o.guifont = "JetBrainsMono Nerd Font:h9"
end
