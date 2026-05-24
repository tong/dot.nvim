return {
  {
    "L3MON4D3/LuaSnip",
    lazy = true,
    opts = function(_, opts)
      --   require("luasnip.loaders.from_vscode").lazy_load({
      --     paths = { path },
      --   })
      --   require("luasnip.loaders.from_lua").load({
      --     paths = { path },
      --   })
      require("luasnip.loaders.from_lua").load({
        paths = { vim.fn.stdpath("config") .. "/lua/snippets" },
      })
      return opts
    end,
    -- dependencies = {
    --   {
    --     "rafamadriz/friendly-snippets",
    --     config = function()
    --       -- local path = vim.fn.stdpath("config") .. "/snippets"
    --       require("luasnip.loaders.from_vscode").lazy_load()
    --       require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })
    --       require("luasnip.loaders.from_lua").lazy_load({
    --         paths = {
    --           vim.fn.stdpath("config") .. "/lua/snippets.lua",
    --           vim.fn.stdpath("config") .. "/lua/snippets/todo.lua",
    --         },
    --       })
    --     end,
    --   },
    -- },
    keys = {
      {
        "<Tab>",
        mode = { "i", "s" },
        function()
          local ls = require("luasnip")
          if ls.jumpable(1) then
            ls.jump(1)
          else
            return "<Tab>"
          end
        end,
        { silent = true },
      },
      {
        "<S-Tab>",
        mode = { "i", "s" },
        function()
          local ls = require("luasnip")
          if ls.jumpable(-1) then
            ls.jump(-1)
          else
            return "<S-Tab>"
          end
        end,
        { silent = true },
      },
      {
        "<C-l>",
        mode = { "i" },
        function()
          local ls = require("luasnip")
          if ls.choice_active() then
            ls.change_choice(1)
          end
        end,
        { silent = true },
      },
      {
        "<C-h>",
        mode = { "i" },
        function()
          local ls = require("luasnip")
          if ls.choice_active() then
            ls.change_choice(-1)
          end
        end,
        { silent = true },
      },
    },
  },
}
