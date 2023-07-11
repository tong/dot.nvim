return {
  {
    "LazyVim/LazyVim",
    --event = "VeryLazy",
    --{ name = "zenburn", lazy = true, "phha/zenburn.nvim", config = function() require("zenburn").setup() end },
  -- { "void", dir = "/home/tong/dev/nvim/void.nvim/" },
    opts = {
     -- colorscheme = "gruvbox",
      colorscheme = "zenburn",
      --colorscheme = "void",
      --colorscheme = "catppuccin",
      --colorscheme = "tokyonight",
    },
  },
    { name = "zenburn", lazy = true, "phha/zenburn.nvim", config = function() require("zenburn").setup() end },
  --{ "ellisonleao/gruvbox.nvim" },
  --{ name = "void", dir = "/home/tong/dev/nvim/void.nvim/" },
  --{ "navarasu/onedark.nvim" },
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     style = "moon",
  --     --transparent = true,
  --     --styles = {
  --     --sidebars = "transparent",
  --     --floats = "transparent",
  --     --},
  --   },
  -- },
  -- {
  --   "catppuccin/nvim",
  --   lazy = true,
  --   name = "catppuccin",
  --   opts = {
  --     integrations = {
  --       alpha = true,
  --       cmp = true,
  --       gitsigns = true,
  --       illuminate = true,
  --       indent_blankline = { enabled = true },
  --       lsp_trouble = true,
  --       mini = true,
  --       native_lsp = {
  --         enabled = true,
  --         underlines = {
  --           errors = { "undercurl" },
  --           hints = { "undercurl" },
  --           warnings = { "undercurl" },
  --           information = { "undercurl" },
  --         },
  --       },
  --       navic = { enabled = true },
  --       neotest = true,
  --       noice = true,
  --       notify = true,
  --       nvimtree = true,
  --       semantic_tokens = true,
  --       telescope = true,
  --       treesitter = true,
  --       which_key = true,
  --     },
  --   },
  -- },
}
