vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- local function map(m, k, v)
--     vim.keymap.set(m, k, v, { silent = true })
-- end
-- local function vim.keymap.set("n", k, v)
--     vim.keymap.set('n', k, v, { silent = true })
-- end
-- local function imap(k, v)
--     vim.keymap.set('i', k, v, { silent = true })
-- end
-- local function vmap(k, v)
--     vim.keymap.set('v', k, v, { silent = true })
-- end

--imap('jj', '<Esc>')

-- Fix * (Keep the cursor position, don't move to next match)
--map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
--map('n', 'n', 'nzz')
--map('n', 'N', 'Nzz')

-- Map the leader key
--map('n', '<Space>', '', {})

--map('n', '<C-', '')

-- vim.keymap.set("n", 'H','20h')
-- vim.keymap.set("n", 'J','10j')
-- vim.keymap.set("n", 'K','10k')
-- vim.keymap.set("n", 'L','20l')

vim.keymap.set("n", "Q", "<nop>")

-- Select all
vim.keymap.set('n', '<C-a>', 'ggVG')

-- Move selection up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move up/down but keep cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor centered in seach
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Move line up/down
vim.keymap.set("n", '<a-j>', ":move .+1<CR>")
vim.keymap.set("n", '<a-k>', ":move .-2<CR>")

-- Insert blank line
vim.keymap.set("n", '<Enter>', 'o<Esc>')
vim.keymap.set("n", '<s-Enter>', 'O<Esc>')

-- Paste over selection while preserving yank
vim.keymap.set("x", "<leader>p", "\"_dP")

--Insert single space
--map('n', '<space>', 'i<space><esc>l')
--
-- Copy/Paste
--map('v', '<C-c', '"*y :let @+=@*<CR>')
--map('n', '<C-p', '"+P')

-- Save the current buffer
vim.keymap.set("n", '<leader>ww', ':update<CR>')
-- Save all buffers
vim.keymap.set("n", '<leader>WW', ':wall<CR>')

-- No highlight
vim.keymap.set("n", '<leader>hl', ':nohlsearch<cr>', { silent = true })

-- Quit
--vim.keymap.set("n", '<C-Q>', ':q<CR>')

-- Format
-- vim.keymap.set("n", "<leader>F", function()
--     vim.lsp.buf.format()
-- end)

-- Start search/replace with word under cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Resize pane
local resize_value = 28
vim.keymap.set("n", '<leader>hh', ':vertical resize -' .. resize_value .. '<CR>', { silent = true })
vim.keymap.set("n", '<leader>jj', ':resize -' .. resize_value .. '<CR>', { silent = true })
vim.keymap.set("n", '<leader>kk', ':resize +' .. resize_value .. '<CR>', { silent = true })
vim.keymap.set("n", '<leader>ll', ':vertical resize +' .. resize_value .. '<CR>', { silent = true })
--resize_value=64
--vim.keymap.set("n", '<leader>HH', ':resize -'..resize_value..'<CR>')
-- vim.keymap.set("n", '<leader>JJ', ':resize -'..resize_value..'<CR>')
-- vim.keymap.set("n", '<leader>KK', ':resize +'..resize_value..'<CR>')
--vim.keymap.set("n", '<leader>LL', ':resize +'..resize_value..'<CR>')

-- Move to the next/previous buffer
--map('n', '<leader>[', ':bp<CR>')
--map('n', '<leader>]', ':bn<CR>')

-- Toggle tree
-- vim.keymap.set("n", '<C-n>', ':NvimTreeToggle<cr>')
-- vim.keymap.set("n", '<leader>tt', ':NvimTreeToggle<CR>')

-- Pretty
--vim.keymap.set("n", '<leader>pf', ':Pretty<cr>')

-- Leave terminal input mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { silent = true })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { silent = true })

--vim.keymap.set('n', '<M-m>', ':MarkdownPreviewToogle', { silent = true })
--vim.keymap.set('n', '<leader>mp', ':MarkdownPreviewToogle<CR>')

