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
