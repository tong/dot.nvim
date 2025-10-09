return {
  "alexghergh/nvim-tmux-navigation",
  lazy = true,
  keys = {
    {
      "<C-h>",
      function()
        require("nvim-tmux-navigation").NvimTmuxNavigateLeft()
      end,
      desc = "Move left",
    },
    {
      "<C-j>",
      function()
        require("nvim-tmux-navigation").NvimTmuxNavigateDown()
      end,
      desc = "Move down",
    },
    {
      "<C-k>",
      function()
        require("nvim-tmux-navigation").NvimTmuxNavigateUp()
      end,
      desc = "Move up",
    },
    {
      "<C-l>",
      function()
        require("nvim-tmux-navigation").NvimTmuxNavigateRight()
      end,
      desc = "Move right",
    },
    {
      "<C-Space>",
      function()
        require("nvim-tmux-navigation").NvimTmuxNavigateNext()
      end,
      desc = "Next pane",
    },
    -- vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
  },
  config = function()
    require("nvim-tmux-navigation").setup({ disable_when_zoomed = true })
  end,
}
