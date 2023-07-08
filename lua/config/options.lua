-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local opt = vim.opt
opt.colorcolumn = "80"
opt.tabstop = 4

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    pattern = { ".frag" },
    command = "set ft=glsl",
})
