local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end
local function nmap(k, v)
    vim.keymap.set('n', k, v, { silent = true })
end
local function imap(k, v)
    vim.keymap.set('i', k, v, { silent = true })
end
local function vmap(k, v)
    vim.keymap.set('v', k, v, { silent = true })
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Fix * (Keep the cursor position, don't move to next match)
--map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
--map('n', 'n', 'nzz')
--map('n', 'N', 'Nzz')

-- Map the leader key
--map('n', '<Space>', '', {})

--map('n', '<C-', '')

-- nmap('H','20h')
-- nmap('J','10j')
-- nmap('K','10k')
-- nmap('L','20l')

-- Select all
nmap('<C-a>', 'ggVG')

-- Disable highlight
--nmap('<c-l>', ':nohlsearch<CR>')

-- Move line up/down
nmap('<a-j>', ":move .+1<CR>")
nmap('<a-k>', ":move .-2<CR>")

-- Copy/Paste
--map('v', '<C-c', '"*y :let @+=@*<CR>')
--map('n', '<C-p', '"+P')

-- Insert blank line
nmap('<Enter>', 'o<Esc>')
nmap('<s-Enter>', 'O<Esc>')

-- Insert single space
--map('n', '<space>', 'i<space><esc>l')

-- Save the current buffer
--nmap('<leader>w', ':update<CR>')
-- Save all buffers
--nmap('<leader>W', ':wall<CR>')

-- Quit 
--nmap('<C-Q>', ':q<CR>')

-- Resize pane
local resize_value=28
nmap('<leader>hh', ':vertical resize -'..resize_value..'<CR>')
nmap('<leader>jj', ':resize -'..resize_value..'<CR>')
nmap('<leader>kk', ':resize +'..resize_value..'<CR>')
nmap('<leader>ll', ':vertical resize +'..resize_value..'<CR>')
--resize_value=64
--nmap('<leader>HH', ':resize -'..resize_value..'<CR>')
-- nmap('<leader>JJ', ':resize -'..resize_value..'<CR>')
-- nmap('<leader>KK', ':resize +'..resize_value..'<CR>')
--nmap('<leader>LL', ':resize +'..resize_value..'<CR>')


-- Move to the next/previous buffer
--map('n', '<leader>[', ':bp<CR>')
--map('n', '<leader>]', ':bn<CR>')


-- Toggle tree
nmap('<C-n>', ':NvimTreeToggle<cr>')
nmap('<leader>tt', ':NvimTreeToggle<CR>')
--
-- Pretty
nmap('<leader>pf', ':Pretty<cr>')

--imap('jj', '<Esc>')

nmap('<F5>', ':Haxe build.hxml<cr>')
