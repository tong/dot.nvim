local g = vim.g
local o = vim.o
local opt = vim.opt
local api   = vim.api

-- o.autoindent = true
-- o.smarttab = true
--o.timeoutlen = 500
--o.updatetime = 200
o.cindent = true
o.clipboard = 'unnamedplus'
o.colorcolumn = 80
o.cursorline = true
o.expandtab = true
o.hidden = true
o.history = 50
o.ignorecase = true
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
o.relativenumber = false
o.number = true
--o.numberwidth = 6
o.ruler = true
o.scrolloff = 8
o.shiftwidth = 0
o.signcolumn = 'yes'
o.smartcase = true
o.softtabstop = -1
o.tabstop = 4
o.termguicolors = true
o.textwidth = 80
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

-- BUG: this won't update the search count after pressing `n` or `N`
-- When running macros and regexes on a large file, lazy redraw tells neovim/vim not to draw the screen
-- o.lazyredraw = true

-- Better folds (don't fold by default)
-- o.foldmethod = 'indent'
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1

vim.cmd('colorscheme $COLORTHEME')

vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}')

vim.cmd('command Pretty lua vim.lsp.buf.formatting()')


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


-- GUI

opt.guifont='JetBrainsMono Nerd Font:h9'
--opt.guicursor='a:blinkwait1500-blinkoff1500-blinkon1500,n:block,i:ver25,v:block,c:ver25-blinkwait175-blinkoff150-blinkon175'

vim.cmd('let g:neovide_transparency=0.95')
vim.cmd('let g:neovide_cursor_vfx_mode="ripple"')
vim.cmd('let g:neovide_cursor_vfx_mode="ripple"')


