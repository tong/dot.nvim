return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- "lukas-reineke/lsp-format.nvim",
      -- 'onsails/lspkind.nvim',
      -- 'glepnir/lspsaga.nvim',
      -- 'folke/trouble.nvim',
    },
    opts = {
      servers = {
        haxe_language_server = {
          filetypes = { "haxe", "hxml" },
          --root_dir = lspconfig.util.root_pattern("*.hxml"),
        },
        pyright = {},
      },
    },
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },
}
