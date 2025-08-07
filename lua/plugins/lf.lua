return {
  {
    "lmburns/lf.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "akinsho/toggleterm.nvim" },
    config = function()
      require("lf").setup({
        default_action = "drop", -- default action when `Lf` opens a file
        -- default_actions = { -- default action keybindings
        --   ["<C-t>"] = "tabedit",
        --   ["<C-x>"] = "split",
        --   ["<C-v>"] = "vsplit",
        --   ["<C-o>"] = "tab drop",
        -- },
        escape_quit = true, -- Exit with `q`
        border = "rounded", -- Rounded floating windowA
        -- height = fn.float2nr(fn.round(0.95 * vim.o.lines)), -- height of the *floating* window
        -- width = fn.float2nr(fn.round(0.95 * vim.o.columns)), -- width of the *floating* window
      })
    end,
    keys = {
      { "<leader>lf", "<cmd>Lf<cr>", desc = "Open LF File Manager" },
    },
  },
}
