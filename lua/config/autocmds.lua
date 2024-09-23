vim.api.nvim_create_autocmd("BufRead", {
  pattern = {
    "*.aiff",
    "*.blend",
    "*.flac",
    "*.gif",
    "*.gz",
    "*.jpg",
    "*.jpeg",
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

-- Show relative line numbers on focused, absolute on unfocused
--[[
vim.api.nvim_create_autocmd({ "WinEnter", "FocusGained" }, {
    callback = function()
        vim.opt_local.number = true
        vim.opt_local.relativenumber = true
    end,
})
vim.api.nvim_create_autocmd({ "WinLeave", "FocusLost" }, {
    callback = function()
        vim.opt_local.number = true
        vim.opt_local.relativenumber = false
    end,
})
--]]

-- Show cursor line only in active window
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
  callback = function()
    if vim.w.auto_cursorline then
      vim.wo.cursorline = true
      vim.w.auto_cursorline = nil
    end
  end,
})
vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
  callback = function()
    if vim.wo.cursorline then
      vim.w.auto_cursorline = true
      vim.wo.cursorline = false
    end
  end,
})
