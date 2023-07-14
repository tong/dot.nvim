return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp-document-symbol",
            --"hrsh7th/cmp-calc",
            -- { "hrsh7th/cmp-emoji", name = "emoji" },
            --"hrsh7th/cmp-nvim-lsp-signature-help",
            --https://github.com/rcarriga/cmp-dap           -- "tamago324/cmp-zsh",
        },
        opts = function()
            local cmp = require("cmp")
            local defaults = require("cmp.config.default")()
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
            local winhighlight = {
                winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
            }
            -- cmp.setup.cmdline(':', {
            --     mapping = cmp.mapping.preset.cmdline(),
            --     sources = cmp.config.sources({
            --         { name = 'path' },
            --         -- { name = 'cmdline' }
            --     }, {
            --         { name = 'cmdline' }
            --     })
            -- })
            -- cmp.setup.cmdline("/", {
            --   mapping = cmp.mapping.preset.cmdline(),
            --   sources = { name = "buffer" }
            -- })
            --   cmp.setup.cmdline(':', {
            --     mapping = cmp.mapping.preset.cmdline(),
            --     sources = cmp.config.sources({
            --     { name = 'path' }
            --   }, {
            --     {
            --       name = 'cmdline',
            --       option = {
            --         ignore_cmds = { 'Man', '!' }
            --       }
            --     }
            --   })
            -- })
            -- cmp.setup.cmdline({ '/', '?' }, {
            --   mapping = cmp.mapping.preset.cmdline(),
            --   sources = {
            --     { name = 'buffer' }
            --   }
            -- })
            vim.api.nvim_set_hl(
                0,
                "CmpGhostText",
                { link = "Comment", default = true }
            )
            return {
                completion = {
                    completeopt = "menu,menuone,noinsert",
                },
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
                sorting = defaults.sorting,
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                sources = cmp.config.sources({
                    { name = "nvim_lsp_signature_helper" },
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    {
                        name = "path",
                        option = { trailing_slash = true },
                    },
                }),
                window = {
                    --completion = cmp.config.window.bordered(winhighlight),
                    --documentation = cmp.config.window.bordered(winhighlight),
                },
            },
                cmp.setup.filetype("gitcommit", {
                    sources = cmp.config.sources({
                        { name = "git" }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
                    }, {
                        { name = "buffer" },
                    }),
                })
        end,
    },
}
