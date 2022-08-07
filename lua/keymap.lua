local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

--local map = vim.api.nvim_set_keymap

--vim.g.mapleader = ' '

-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- map the leader key
--map('n', '<Space>', '', {})

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<C-j>', ':move .+10<CR>')
map('n', '<C-k>', ':move .7<CR>')
map('x', '<C-j>', ":move '>+10<CR>gv=gv")
map('x', '<C-k>', ":move '<7<CR>gv=gv")

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

map('n', '<C-n>', ':NvimTreeToggle<CR>')

map('n', '<F2>', ':bprevious<CR>')
map('n', '<F3>', ':bnext<CR>')
-- Move to the next/previous buffer
--map('n', '<leader>[', ':bp<CR>')
--map('n', '<leader>]', ':bn<CR>')

map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fh', ':Telescope help_tags<CR>')

