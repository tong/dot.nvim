local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
    spec = {
        { "LazyVim/LazyVim", import = "lazyvim.plugins" },
        -- { import = "lazyvim.plugins.extras.dap.core" },
        -- { import = "lazyvim.plugins.extras.dap.nlua" },
        -- { import = "lazyvim.plugins.extras.lang.clangd" },
        -- { import = "lazyvim.plugins.extras.lang.json" },
        -- { import = "lazyvim.plugins.extras.lang.markdown" },
        -- { import = "lazyvim.plugins.extras.lang.python" },
        -- { import = "lazyvim.plugins.extras.test.core" },
        -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
        -- { import = "lazyvim.plugins.extras.lang.typescript" },
        --{ import = "lazyvim.plugins.extras.editor.mini-files" },
        --{ import = "lazyvim.plugins.extras.formatting.prettier" },
        --{ import = "lazyvim.plugins.extras.ui.edgy" },
        --{ import = "lazyvim.plugins.extras.util.project" },
        --{ import = "lazyvim.plugins.extras.coding.native_snippets" },
        { import = "plugins" },
    },
    defaults = {
        lazy = true,
        --version = false, -- always use the latest git commit
        -- version = "*", -- try installing the latest stable version for plugins that support semver
    },
    install = {
        colorscheme = {
            "tokyonight",
            --"habamax",
        },
    },
    checker = { enabled = false }, -- automatically check for plugin updates
    performance = {
        cache = {
            enabled = true,
            -- disable_events = {},
        },
        rtp = {
            disabled_plugins = {
                "gzip",
                -- "matchit",
                -- "matchparen",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
})
