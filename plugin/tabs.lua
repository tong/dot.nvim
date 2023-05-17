
vim.g.barbar_auto_setup = false -- disable auto-setup
require 'barbar'.setup {
    animation = true,
    auto_hide = false,
    tabpages = true,
    clickable = true,
    --exclude_ft = {'javascript'},
    --exclude_name = {'package.json'},
    focus_on_close = 'left',

    -- Hide inactive buffers and file extensions. Other options are `alternate`, `current`, and `visible`.
    hide = { extensions = false, inactive = false },
    highlight_alternate = false,
    highlight_inactive_file_icons = false,
    highlight_visible = true,

    icons = {
        -- Configure the base icons on the bufferline.
        buffer_index = false,
        buffer_number = false,
        button = '',
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
            [vim.diagnostic.severity.WARN] = { enabled = false },
            [vim.diagnostic.severity.INFO] = { enabled = false },
            [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        filetype = {
            custom_colors = false,
            enabled = true,
        },
        separator = { left = '▎', right = '' },
        modified = { button = '●' },
        pinned = { button = '車', filename = true, separator = { right = '' } },

        -- Configure the icons on the bufferline based on the visibility of a buffer.
        -- Supports all the base icon options, plus `modified` and `pinned`.
        alternate = { filetype = { enabled = false } },
        current = { buffer_index = true },
        inactive = { button = '×' },
        visible = { modified = { buffer_number = false } },
    },

    -- If true, new buffers will be inserted at the start/end of the list.
    -- Default is to insert after current buffer.
    insert_at_end = false,
    insert_at_start = false,

    maximum_padding = 1,
    minimum_padding = 1,
    maximum_length = 30,

    -- If set, the letters for each buffer in buffer-pick mode will be
    -- assigned based on their name. Otherwise or in case all letters are
    -- already assigned, the behavior is to assign letters in order of
    -- usability (see order below)
    semantic_letters = true,

    -- Set the filetypes which barbar will offset itself for
    sidebar_filetypes = {
        -- Use the default values: {event = 'BufWinLeave', text = nil}
        NvimTree = true,
        -- Or, specify the text used for the offset:
        undotree = { text = 'undotree' },
        -- Or, specify the event which the sidebar executes when leaving:
        --['neo-tree'] = {event = 'BufWipeout'},
        -- Or, specify both
        --Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
    },

    -- New buffer letters are assigned in this order. This order is
    -- optimal for the qwerty keyboard layout but might need adjustement
    -- for other layouts.
    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

    -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
    -- where X is the buffer number. But only a static string is accepted here.
    no_name_title = nil,
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', opts)
--map('n', '<C-.>', '<Cmd>BufferNext<CR>', opts)
--map('n', '<', '<Cmd>BufferPrevious<CR>', opts)
--map('n', '>', '<Cmd>BufferNext<CR>', opts)
-- map('n', '<', '<Cmd>BufferMovePrevious<CR>', opts)
-- map('n', '>', '<Cmd>BufferMoveNext<CR>', opts)
-- map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
-- map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
--map('n', '<c-j>', '<Cmd>BufferPrevious<CR>', opts)
--map('n', '<c-k>', '<Cmd>BufferNext<CR>', opts)

for i = 1, 9, 1 do
    map('n', '<C-' .. i .. '>', '<Cmd>BufferGoto ' .. i .. '<CR>', opts)
end
--map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
map('n', '<C-0>', '<Cmd>BufferLast<CR>', opts)

map('n', '<C-A-,>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<C-A-.>', '<Cmd>BufferMoveNext<CR>', opts)
--map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
--map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
map('n', '<A-a>', '<Cmd>BufferCloseAllButPinned<CR>', opts)

map('n', '<C-w>Q', '<Cmd>BufferCloseAllButCurrent<CR>', opts)

-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

--map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)

map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- NvimTree offset
-- local nvim_tree_events = require('nvim-tree.events')
-- local bufferline_api = require('bufferline.api')
--
-- local function get_tree_size()
--     return require 'nvim-tree.view'.View.width
-- end
--
-- nvim_tree_events.subscribe('TreeOpen', function()
--     bufferline_api.set_offset(get_tree_size())
-- end)
--
-- nvim_tree_events.subscribe('Resize', function()
--     bufferline_api.set_offset(get_tree_size())
-- end)
--
-- nvim_tree_events.subscribe('TreeClose', function()
--     bufferline_api.set_offset(0)
-- end)
--
