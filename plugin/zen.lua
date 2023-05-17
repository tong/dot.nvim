require("zen-mode").setup {
    window = {
        backdrop = 0.95,
        width = 140,
        height = 1
    },
    plugins = {
        options = {
            enabled = true,
            ruler = false, -- disables the ruler text in the cmd line area
            showcmd = false, -- disables the command in the last line of the screen
        },
        twilight = { enabled = false }, -- enable to start Twilight when zen mode opens
        --gitsigns = { enabled = false }, -- disables git signs
        tmux = { enabled = false },
        kitty = {
            enabled = false,
            font = "+4",
        },
    },
    -- on_open = function(win)
    -- end,
    -- on_close = function()
    -- end
}
vim.keymap.set("n", "<leader>zz", ":ZenMode<CR>")
