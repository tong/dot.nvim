return {
    -- { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "bash",
                "c",
                "cmake",
                "css",
                "gitcommit",
                "gitignore",
                "glsl",
                "go",
                "http",
                "meson",
                "ninja",
                "nix",
                "org",
                "php",
                "scss",
                "sql",
                -- "comment", -- comments are slowing down TS bigtime, so disable for now
                --"devicetree",
                --"graphql",
                --"kconfig",
                --"svelte",
                --"vue",
                --"wgsl",
            })
        end,
    },
}
