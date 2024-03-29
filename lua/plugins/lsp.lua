return {
    -- Servers
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            -- "lukas-reineke/lsp-format.nvim",
            -- 'onsails/lspkind.nvim',
            -- 'glepnir/lspsaga.nvim',
            {
                "hrsh7th/cmp-nvim-lsp",
                cond = function()
                    return require("lazyvim.util").has("nvim-cmp")
                end,
            },
        },
        opts = {
            -- options for vim.diagnostic.config()
            diagnostics = {
                underline = true,
                update_in_insert = false,
                virtual_text = {
                    spacing = 4,
                    source = "if_many",
                    prefix = "●",
                    -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
                    -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
                    -- prefix = "icons",
                },
                severity_sort = true,
            },
            servers = {
                bashls = {},

                --ccls = {
                --root_dir = root_pattern('compile_commands.json', '.ccls', '.git')
                --},
                clangd = {},
                cssls = {},
                emmet_ls = {
                    filetypes = {
                        "html",
                        "css",
                        "sass",
                        "scss",
                        "less",
                        "javascript",
                        "htmlhugo",
                    },
                },
                glslls = {
                    -- cmd = { "glslls", "--stdin" },
                },
                html = {},
                jsonls = {},
                lemminx = {},
                marksman = {},
                haxe_language_server = {
                    filetypes = { "haxe", "hxml" },
                    --root_dir = lspconfig.util.root_pattern("*.hxml"),
                },
                pyright = {
                    --cmd = { "pyright-langserver", "--stdio" },
                },
                --tsserver = {}
            },
        },
    },
    { import = "lazyvim.plugins.extras.lang.typescript" },
    {
        "simrat39/symbols-outline.nvim",
        cmd = "SymbolsOutline",
        keys = {
            {
                "<leader>cs",
                "<cmd>SymbolsOutline<cr>",
                desc = "Symbols Outline",
            },
        },
        config = true,
    },
}
