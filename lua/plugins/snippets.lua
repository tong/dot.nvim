return {
    {
        "L3MON4D3/LuaSnip",
        build = (not jit.os:find("Windows"))
                and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
            or nil,
        dependencies = {
            "rafamadriz/friendly-snippets",
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load()
                --require("luasnip.loaders.from_lua").lazy_load({ path = "~/.config/nvim/snippets" })
            end,
        },
        -- opts = {
        --   history = true,
        --   delete_check_events = "TextChanged",
        -- },
        opts = function(_, opts)
            opts.history = true
            opts.delete_check_events = "TextChanged"
            --require("luasnip.loaders.from_lua").lazy_load({ path = "~/.config/nvim/snippets" })
        end,
        keys = {
            {
                "<tab>",
                function()
                    return require("luasnip").jumpable(1)
                            and "<Plug>luasnip-jump-next"
                        or "<tab>"
                end,
                expr = true,
                silent = true,
                mode = "i",
            },
            {
                "<tab>",
                function()
                    require("luasnip").jump(1)
                end,
                mode = "s",
            },
            {
                "<s-tab>",
                function()
                    require("luasnip").jump(-1)
                end,
                mode = { "i", "s" },
            },
        },
    },
}
