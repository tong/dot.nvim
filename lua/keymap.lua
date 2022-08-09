local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- map the leader key
--map('n', '<Space>', '', {})

-- Move line up/down
map('n', '<a-j>', ":move .+1<CR>")
map('n', '<a-k>', ":move .-2<CR>")

-- Select all
map('n', '<C-a>', 'ggVG')

-- Copy/Paste
--map('v', '<C-c', '"*y :let @+=@*<CR>')
--map('n', '<C-p', '"+P')

-- Quickly save the current buffer or all buffers
map('n', '<leader>w', ':update<CR>')
map('n', '<leader>W', ':wall<CR>')

-- Quit nvim
map('n', '<C-Q>', ':q<CR>')

-- Toggle tree
map('n', '<C-n>', ':NvimTreeToggle<CR>')

-- Move to the next/previous buffer
map('n', '<F2>', ':bprevious<CR>')
map('n', '<F3>', ':bnext<CR>')
--map('n', '<leader>[', ':bp<CR>')
--map('n', '<leader>]', ':bn<CR>')

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fh', ':Telescope help_tags<CR>')

