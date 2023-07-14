return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/playground",
        },
        opts = function()
            local parser_config =
                require("nvim-treesitter.parsers").get_parser_configs()
            -- parser_config.haxe = {
            --     install_info = {
            --         url = "https://github.com/vantreeseba/tree-sitter-haxe",
            --         files = { "src/parser.c" },
            --         branch = "main",
            --     },
            --     filetype = "haxe",
            -- }
            parser_config.playground = {
                enable = true,
            }
            return {
                ensure_installed = {
                    "bash",
                    "c",
                    "html",
                    "javascript",
                    "json",
                    "lua",
                    "markdown",
                    "markdown_inline",
                    "python",
                    "query",
                    "regex",
                    "tsx",
                    "typescript",
                    "vim",
                    "yaml",
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<C-space>",
                        node_incremental = "<C-space>",
                        scope_incremental = false,
                        node_decremental = "<bs>",
                    },
                },
            }
        end,
    },
    -- use mini.starter instead of alpha
    --{ import = "lazyvim.plugins.extras.ui.mini-starter" },
    -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
    --{ import = "lazyvim.plugins.extras.lang.json" },
}
