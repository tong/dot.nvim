return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    dashboard = {
      preset = {
        header = [[
__/\__
\    /
__/\__/    \__/\__
\                /
/__            __\
\          /
__/\__      __/          \__      __/\__
\    /      \              /      \    /
__/\__/    \__/\__/              \__/\__/    \__/\__
]],
      },
    },
    picker = {
      hidden = true,
      ignored = true,
      sources = {
        files = {
          hidden = true,
          ignored = true,
        },
        explorer = {
          prompt = " ",
          files = {
            hidden = true,
          },
          layout = {
            auto_hide = { "input" },
          },
          win = {
            input = {
              keys = {
                -- ["s"] = { "edit_vsplit", mode = { "i", "n" } },
              },
            },
          },
        },
      },
    },
    dim = {},
  },
}
