-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local opt = vim.opt
opt.colorcolumn = "80"
opt.tabstop = 4
opt.pumheight = 80
opt.colorcolumn = "80"
--opt.mousescroll = "ver:2,hor:6"

opt.backup = false
opt.relativenumber = false
opt.swapfile = false
opt.writebackup = false
opt.undofile = true

--vim.g.wiki_root = "~/wiki"

if vim.g.neovide then
    --vim.o.guifont = "Fira Code,Symbols Nerd Font Mono:h34"
    vim.o.guifont = "JetBrainsMono Nerd Font:h9"
    --vim.g.neovide_scale_factor = 0.3
    --vim.g.neovide_scroll_animation_length = 0.3
end
