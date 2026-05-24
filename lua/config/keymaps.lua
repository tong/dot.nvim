-- Select all
vim.keymap.set("n", "<C-a>", function()
  vim.cmd("normal! ggVG")
end, { silent = true })

-- Resize pane
-- vim.keymap.set("n", "<C-S-j>", ":resize +16<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-S-k>", ":resize -16<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<M-h>", ":resize -12<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<M-l>", ":resize +12<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<M-j>", ":vertical resize +12<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<M-k>", ":vertical resize -12<CR>", { noremap = true, silent = true })

-- Move line
-- HACK:
-- ISSUE:
vim.keymap.set("n", "ï", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "œ", ":m .-2<CR>==", { silent = true })
vim.keymap.set("v", "ï", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "œ", ":m '<-2<CR>gv=gv", { silent = true })
-- vim.api.nvim_set_keymap("n", "<M-j>", ":m .+1<CR>==", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<M-k>", ":m .-2<CR>==", { noremap = true, silent = true })
-- vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
