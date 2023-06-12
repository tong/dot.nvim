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
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")

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

vim.keymap.set("n", '<leader>ww', ':update<CR>') -- Save current buffer
vim.keymap.set("n", '<leader>WW', ':wall<CR>')   -- Save all buffers

-- No search highlight
--vim.keymap.set("n", '<leader>hl', ':nohlsearch<cr>', { silent = true })
vim.keymap.set("n", '<leader><backspace>', ':nohlsearch<cr>', { silent = true })
vim.keymap.set("n", '<c-escape>', ':nohlsearch<cr>', { silent = true })

-- Quit
--vim.keymap.set("n", '<C-Q>', ':q<CR>')

-- Format
--vim.keymap.set("n", "<leader>F", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<leader>F", function() vim.lsp.buf.format() end)

-- Start search/replace with word under cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Buffer navigation
vim.keymap.set('n', '<C-,>', '<Cmd>BufferPrevious<CR>', { silent = true })
vim.keymap.set('n', '<C-.>', '<Cmd>BufferNext<CR>', { silent = true })
--TODO: see tabs.lua (barbar)

--  Buffer close
vim.keymap.set("n", 'QQ', ':bd<CR>', { silent = true })       -- Close all
vim.keymap.set("n", 'QA', ':%bd | e#<CR>', { silent = true }) -- Close all but current
--vim.keymap.set("n", 'QA', ':bufdo bd<CR>', { silent = true })

-- Resize pane
local resize_value = 28
vim.keymap.set("n", '<leader>hh', ':resize -' .. resize_value .. '<CR>', { silent = true })
vim.keymap.set("n", '<leader>jj', ':vertical resize -' .. resize_value .. '<CR>', { silent = true })
vim.keymap.set("n", '<leader>kk', ':vertical resize +' .. resize_value .. '<CR>', { silent = true })
vim.keymap.set("n", '<leader>ll', ':resize +' .. resize_value .. '<CR>', { silent = true })
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

-- Lspsaga
vim.keymap.set('n', 'ga', '<cmd>Lspsaga peek_definition<CR>')

--Telescope find_files theme=dropdown
--nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>
--builtin.find_files(themes.get_dropdown({}))

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fc', ':Telescope neoclip<CR>', {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fr', ':Telescope lsp_references<CR>', {})
vim.keymap.set('n', '<leader>ftt', ':Telescope<CR>', {})

vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gs', builtin.git_stash, {})

-- Pretty
vim.keymap.set("n", '<leader>pf', ':Prettier<cr>')

-- Leave terminal input mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { silent = true })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { silent = true })

--vim.keymap.set('n', '<M-m>', ':MarkdownPreviewToogle', { silent = true })
--vim.keymap.set('n', '<leader>mp', ':MarkdownPreviewToogle<CR>')
