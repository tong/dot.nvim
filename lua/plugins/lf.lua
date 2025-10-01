return {
  "lmburns/lf.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    require("lf").setup({
      -- escape_quit = true,
      -- border = "rounded",
    })
  end,
}
