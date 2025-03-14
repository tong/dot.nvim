return {
  {
    "lmburns/lf.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "akinsho/toggleterm.nvim" },
    config = function()
      require("lf").setup({
        escape_quit = true, -- Exit with `q`
        border = "rounded", -- Rounded floating window
      })
    end,
    keys = {
      { "<leader>lf", "<cmd>Lf<cr>", desc = "Open LF File Manager" },
    },
  },
}
