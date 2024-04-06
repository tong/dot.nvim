return {
    {
        "L3MON4D3/LuaSnip",
        opts = function(_, opts)
            opts.history = true
            opts.delete_check_events = "TextChanged"
            require("luasnip.loaders.from_lua").load({
                paths = { "~/.config/nvim/snippets" },
            })
        end,
    },
}
