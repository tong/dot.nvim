return {
    { "ellisonleao/gruvbox.nvim" },
    {
        name = "zenburn",
        lazy = true,
        "phha/zenburn.nvim",
        config = function()
            require("zenburn").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },
}
