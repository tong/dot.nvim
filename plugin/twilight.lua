require("twilight").setup({
    dimming = {
        alpha = 0.5,
        --color = { "Normal", "#ff0000" },
        --term_bg = "#ffffff",
        ----inactive = false,
    },
    context = 10,
    treesitter = true,
    expand = {
        "function",
        "method",
        "table",
        "if_statement",
    },
    exclude = {}
})

