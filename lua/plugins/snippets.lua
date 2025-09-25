return {
  {
    "L3MON4D3/LuaSnip",
    opts = function(_, opts)
      require("luasnip").config.setup(opts)
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { vim.fn.stdpath("config") .. "/snippets" },
      })
      require("luasnip.loaders.from_lua").load({
        paths = { vim.fn.stdpath("config") .. "/snippets" },
      })
    end,
  },
}
