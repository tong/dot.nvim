vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.autoindent = true
opt.belloff = "all"
opt.breakindent = true
opt.completeopt = "menu,menuone,noinsert,noselect"
--opt.colorcolumn = '+1'
opt.colorcolumn = '80'
opt.cindent = true
opt.clipboard = 'unnamedplus'
opt.completeopt = 'menu,menuone,noinsert,noselect'
opt.cursorline = true
opt.encoding = 'utf-8'
opt.equalalways = false
opt.expandtab = true
opt.hidden = true
opt.history = 50
opt.ignorecase = true
opt.linebreak = true
opt.list = true
opt.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
opt.mouse = "a"
opt.number = true
--opt.numberwidth = 6
opt.relativenumber = false
opt.ruler = true
opt.scrolloff = 12
opt.shell = 'zsh'
opt.shiftwidth = 4
opt.showbreak = string.rep(" ", 3) -- long lines wrap smartly
opt.showcmd = true
opt.showmatch = true
opt.showmode = false
opt.signcolumn = 'yes'
opt.smartcase = true
opt.smartindent = true
opt.smarttab = true
--opt.softtabstop = -1
opt.softtabstop = 4
opt.spell = false
opt.tabstop = 4
opt.termguicolors = true
--opt.textwidth = 80
opt.title = true
--opt.updatetime = 1000
opt.updatetime = 200
opt.wildmenu = true
opt.wildignore = "__pycache__"
--opt.wildignore:append { "*.o", "*~", "*.pyc", "*pycache*" }
--opt.wildignore:append "Cargo.lock"
opt.wildmode = "longest:full"
opt.wildoptions = "pum"
opt.wrap = false

--opt.hlsearch = true
opt.incsearch = true

opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true

opt.splitright = true
opt.splitbelow = true

-- Preserve view while jumping
--opt.jumpoptions = 'view'

-- opt.foldmethod = 'indent'
-- opt.foldlevelstart = 99
-- opt.foldnestmax = 3
-- opt.foldminlines = 1

-- Setup grep
opt.grepprg ="rg --vimgrep --no-heading --smart-case"
opt.grepformat ="%f:%l:%c:%m"

-- Cursorline highlighting control
--  Only have it on in the active buffer
-- local group = vim.api.nvim_create_augroup("CursorLineControl", { clear = true })
-- local set_cursorline = function(event, value, pattern)
--   vim.api.nvim_create_autocmd(event, {
--     group = group,
--     pattern = pattern,
--     callback = function()
--       vim.opt_local.cursorline = value
--     end,
--   })
-- end
-- set_cursorline("WinLeave", false)
-- set_cursorline("WinEnter", true)
-- set_cursorline("FileType", false, "TelescopePrompt")

vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank {higroup="Search", timeout=200}')

vim.cmd('autocmd BufReadCmd *.blend silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.blend bdelete')
vim.cmd('autocmd BufReadCmd *.jpg silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.jpg bdelete')
vim.cmd('autocmd BufReadCmd *.jpeg silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.jpeg bdelete')
vim.cmd('autocmd BufReadCmd *.gif silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.gif bdelete')
vim.cmd('autocmd BufReadCmd *.mp3 silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.mp3 bdelete')
vim.cmd('autocmd BufReadCmd *.mp4 silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.mp4 bdelete')
vim.cmd('autocmd BufReadCmd *.ogg silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.ogg bdelete')
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
vim.cmd('autocmd BufReadCmd *.wav silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.wav bdelete')
vim.cmd('autocmd BufReadCmd *.woff silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.woff bdelete')
vim.cmd('autocmd BufReadCmd *.woff2 silent !xdg-open % &')
vim.cmd('autocmd BufEnter *.woff2 bdelete')


-- Diagnostic symbols
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end


-- GUI
opt.guicursor =
'n-v:block,i-ci-ve:ver25,c:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'
if vim.g.neovide then
    opt.guifont = "JetBrainsMono Nerd Font:h5"
    vim.g.neovide_cursor_vfx_mode = "sonicboom"
    --vim.g.neovide_scale_factor = 0.5
    --opt.neovide_transparency = 0.0
    --opt.transparency = 0.8
    --opt.neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))
    --vim.g.neovide_cursor_trail_legnth = 0
    --vim.g.neovide_cursor_animation_length = 0
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
