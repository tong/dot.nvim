return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "cmake",
        "css",
        "devicetree",
        "gitcommit",
        "gitignore",
        "glsl",
        "go",
        "gotmpl",
        "graphql",
        "haxe",
        "html",
        "http",
        "hxml",
        "kconfig",
        "meson",
        "muttrc",
        "ninja",
        "scss",
        "sql",
      },
    },
  },
}
