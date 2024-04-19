return {
    {
        "echasnovski/mini.cursorword",
        version = "*",
        lazy = false,
        config = function()
            require("mini.cursorword").setup({
                delay = 100,
            })
        end,
    },
}
