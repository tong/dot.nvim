local kind_icons = {
    Text = "",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = "󰇽",
    Variable = "󰂡",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "󰏘",
    File = "󰈙",
    Reference = "",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "󰅲",
}

return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            --"hrsh7th/cmp-calc",
            "hrsh7th/cmp-cmdline",
            { "hrsh7th/cmp-emoji", name = "emoji" },
            "hrsh7th/cmp-nvim-lsp",
            --"hrsh7th/cmp-nvim-lsp-signature-help",
            -- 'hrsh7th/cmp-nvim-lsp-document-symbol',
            "hrsh7th/cmp-path",
            "tamago324/cmp-zsh",
        },
        ---@param opts cmp.ConfigSchema
        opts = function()
            vim.api.nvim_set_hl(
                0,
                "CmpGhostText",
                { link = "Comment", default = true }
            )
            local cmp = require("cmp")
            return {
                completion = {
                    completeopt = "menu,menuone,noinsert",
                },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-n>"] = cmp.mapping.select_next_item({
                        behavior = cmp.SelectBehavior.Insert,
                    }),
                    ["<C-p>"] = cmp.mapping.select_prev_item({
                        behavior = cmp.SelectBehavior.Insert,
                    }),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                    ["<S-CR>"] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path", option = { trailing_slash = true } },
                }),
                formatting = {
                    format = function(entry, vim_item)
                        vim_item.kind = string.format(
                            "%s %s",
                            kind_icons[vim_item.kind],
                            vim_item.kind
                        ) -- This concatonates the icons with the name of the item kind
                        vim_item.menu = ({
                            buffer = "<- Buffer",
                            nvim_lsp = "<- LSP",
                            luasnip = "<- Snippet",
                            path = "<- Path",
                            nvim_lua = "<- Lua",
                            latex_symbols = "<- LaTeX",
                        })[entry.source.name]
                        return vim_item
                    end,
                    -- format = function(_, item)
                    --   local icons = require("lazyvim.config").icons.kinds
                    --   if icons[item.kind] then
                    --     item.kind = icons[item.kind] .. item.kind
                    --   end
                    --   return item
                    -- end,
                },
                experimental = {
                    ghost_text = {
                        hl_group = "CmpGhostText",
                    },
                },
            }
        end,
    },
}
