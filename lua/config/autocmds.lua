-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- Show cursor line only in active window
--[[
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
    callback = function()
        local ok, cl = pcall(vim.api.nvim_win_get_var, 0, "auto-cursorline")
        if ok and cl then
            vim.wo.cursorline = true
            vim.api.nvim_win_del_var(0, "auto-cursorline")
        end
    end,
})
vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
    callback = function()
        local cl = vim.wo.cursorline
        if cl then
            vim.api.nvim_win_set_var(0, "auto-cursorline", cl)
            vim.wo.cursorline = false
        end
    end,
})
--]]

-- Create directories when needed, when saving a file
vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("better_backup", { clear = true }),
    callback = function(event)
        local file = vim.loop.fs_realpath(event.match) or event.match
        local backup = vim.fn.fnamemodify(file, ":p:~:h")
        backup = backup:gsub("[/\\]", "%%")
        vim.go.backupext = backup
    end,
})

-- Fix conceallevel for json & help files
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "json", "jsonc" },
    callback = function()
        vim.wo.spell = false
        vim.wo.conceallevel = 0
    end,
})

vim.filetype.add({
    extension = {
        overlay = "dts",
        keymap = "dts",
        conf = "dosini",
    },
})

-- vim.api.nvim_create_autocmd("FileType", {
--     callback = function()
--         local commentstrings = {
--             dts = "// %s",
--             haxe = "// %s",
--         }
--         local ft = vim.bo.filetype
--         if commentstrings[ft] then
--             vim.bo.commentstring = commentstrings[ft]
--         end
--     end,
-- })

vim.api.nvim_create_autocmd("BufRead", {
    pattern = {
        "*.aiff",
        "*.blend",
        "*.flac",
        "*.gif",
        "*.gz",
        "*.jpg",
        "*.jpeg",
        "*.mp3",
        "*.mp4",
        "*.ogg",
        "*.pdf",
        "*.png",
        "*.tgz",
        "*.ttf",
        "*.wav",
        "*.woff",
        "*.woff2",
        "*.zip",
    },
    callback = function()
        vim.cmd("silent !xdg-open %")
        vim.cmd("silent bdelete")
    end,
})

-- Disable autoformat
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--     pattern = { "markdown" },
--     callback = function()
--         vim.b.autoformat = false
--     end,
-- })

-- Show relative line numbers on focused, absolute on unfocused
--[[
vim.api.nvim_create_autocmd({ "WinEnter", "FocusGained" }, {
    callback = function()
        vim.opt_local.number = true
        vim.opt_local.relativenumber = true
    end,
})
vim.api.nvim_create_autocmd({ "WinLeave", "FocusLost" }, {
    callback = function()
        vim.opt_local.number = true
        vim.opt_local.relativenumber = false
    end,
})
--]]
