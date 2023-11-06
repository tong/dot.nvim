-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local opt = vim.opt
opt.colorcolumn = "80"
opt.tabstop = 4
opt.pumheight = 80
opt.colorcolumn = "80"
--opt.mousescroll = "ver:2,hor:6"

opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true

--opt.colorscheme = "gruvbox",

-- vim.cmd('autocmd BufReadCmd *.jpg silent !xdg-open % &')
-- vim.cmd('autocmd BufEnter *.jpg bdelete')

-- vim.g.border = {
--     padding = { 100, 10 },
-- }

--vim.bo.commentstring = "// %s"

-- vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
--     pattern = { ".frag" },
--     command = "set ft=glsl",
-- })

--vim.api.nvim_create_autocmd({ "BufEnter *.hx" }, {
--vim.api.nvim_create_autocmd({ "BufEnter" }, {
--pattern = { ".hx" },
--command = 'lua vim.bo.commentstring="// %s"',
--})

if vim.g.neovide then
    --vim.o.guifont = "Fira Code,Symbols Nerd Font Mono:h34"
    vim.o.guifont = "JetBrainsMono Nerd Font:h9"
    --vim.g.neovide_scale_factor = 0.3
    --vim.g.neovide_scroll_animation_length = 0.3
end
