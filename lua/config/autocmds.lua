-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("BufRead", {
  pattern = {
    "*.aiff",
    "*.blend",
    "*.flac",
    "*.gif",
    "*.gz",
    "*.jpg",
    "*.jpeg",
    "*.mov",
    "*.mp3",
    "*.mp4",
    "*.ogg",
    "*.pdf",
    "*.png",
    "*.tgz",
    "*.ttf",
    "*.wav",
    "*.woff",
    "*.woff2",
    "*.zip",
  },
  callback = function()
    vim.cmd("silent !xdg-open %")
    vim.cmd("silent bdelete")
  end,
})
