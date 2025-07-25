return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = {
      width = 40,
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
        keys = {
          { icon = " ", key = "f", desc = "find file", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "new file", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "find text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "recent files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "restore session", section = "session" },
          { icon = "󰒲 ", key = "L", desc = "lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "quit", action = ":qa" },
        },
      },
      sections = {
        { section = "header" },
        { section = "keys", gap=0, padding=1 },
        { section = "startup" },
      }
    },
  },
}
