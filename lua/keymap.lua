local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end
local function nmap(k, v)
    vim.keymap.set('n', k, v, { silent = true })
end
local function imap(k, v)
    vim.keymap.set('i', k, v, { silent = true })
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Fix * (Keep the cursor position, don't move to next match)
--map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
--map('n', 'n', 'nzz')
--map('n', 'N', 'Nzz')

-- map the leader key
--map('n', '<Space>', '', {})

--map('n', '<C-', '')

nmap('H','20h')
nmap('J','10j')
nmap('K','10k')
nmap('L','20l')

-- Move line up/down
nmap('<a-j>', ":move .+1<CR>")
nmap('<a-k>', ":move .-2<CR>")

-- Select all
nmap('<C-a>', 'ggVG')

-- Copy/Paste
--map('v', '<C-c', '"*y :let @+=@*<CR>')
--map('n', '<C-p', '"+P')

-- Insert blank line
nmap('<Enter>', 'o<Esc>')
nmap('<s-Enter>', 'O<Esc>')

-- Insert single space
--map('n', '<space>', 'i<space><esc>l')

-- Quickly save the current buffer or all buffers
nmap('<leader>w', ':update<CR>')
nmap('<leader>W', ':wall<CR>')

-- Quit 
nmap('<C-Q>', ':q<CR>')

-- Resize window
nmap('<leader>jj', ':resize -20<CR>')
nmap('<leader>kk', ':resize +20<CR>')
nmap('<leader>ll', ':vertical resize +40<CR>')
nmap('<leader>hh', ':vertical resize -40<CR>')

-- Toggle tree
map('n', '<C-n>', ':NvimTreeToggle<CR>')
--nmap('<leader>tt', ':NvimTreeToggle<CR>')

-- Move to the next/previous buffer
nmap('<F2>', ':bprevious<CR>')
nmap('<F3>', ':bnext<CR>')
--map('n', '<leader>[', ':bp<CR>')
--map('n', '<leader>]', ':bn<CR>')

nmap('<leader>pf', ':Pretty<cr>')

imap('jj', '<Esc>')
