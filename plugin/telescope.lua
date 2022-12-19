local telescope = require('telescope')
local builtin = require('telescope.builtin')
local actions = require("telescope.actions")

telescope.setup {
    defaults = {
        layout_config = {
            --vertical = { width = 0.5 }
        },
        file_ignore_patterns = {
            "node_modules",
            "public"
        },
        mapping = {
            --i = { ["<C-h>"] = "which_key" }
            --i = { ["<esc>"] = actions.close}
        }
    },
    pickers = {
        -- find_files = {
        --     theme = "ivy",
        -- }
    },
    extensions = {
        --media_files = {
        --filetypes = {"png"}
        --},
        -- fzf = {
        --     fuzzy = true,                    -- false will only do exact matching
        --     override_generic_sorter = true,  -- override the generic sorter
        --     override_file_sorter = true,     -- override the file sorter
        --     case_mode = "smart_case",        -- or "ignore_case" or "respect_case, the default case_mode is "smart_case"
        -- }
    }
}

--telescope.load_extension('media_files')
telescope.load_extension('octo')
--require("telescope").load_extension('gh')
--telescope.load_extension('harpoon')
--telescope.load_extension('cheat')

require("cheatsheet").setup({
    -- Whether to show bundled cheatsheets

    -- For generic cheatsheets like default, unicode, nerd-fonts, etc
    -- bundled_cheatsheets = {
    --     enabled = {},
    --     disabled = {},
    -- },
    bundled_cheatsheets = true,

    -- For plugin specific cheatsheets
    -- bundled_plugin_cheatsheets = {
    --     enabled = {},
    --     disabled = {},
    -- }
    bundled_plugin_cheatsheets = true,

    -- For bundled plugin cheatsheets, do not show a sheet if you
    -- don't have the plugin installed (searches runtimepath for
    -- same directory name)
    include_only_installed_plugins = true,

    -- Key mappings bound inside the telescope window
    telescope_mappings = {
        ['<CR>'] = require('cheatsheet.telescope.actions').select_or_fill_commandline,
        ['<A-CR>'] = require('cheatsheet.telescope.actions').select_or_execute,
        ['<C-Y>'] = require('cheatsheet.telescope.actions').copy_cheat_value,
        ['<C-E>'] = require('cheatsheet.telescope.actions').edit_user_cheatsheet,
    }
})

require('neoclip').setup({
    history = 1000,
    enable_persistent_history = false,
    length_limit = 1048576,
    continuous_sync = false,
    --db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
    filter = nil,
    preview = true,
    prompt = nil,
    default_register = '"',
    default_register_macros = 'q',
    enable_macro_history = true,
    content_spec_column = false,
    on_paste = {
        set_reg = false,
    },
    on_replay = {
        set_reg = false,
    },
    keys = {
        telescope = {
            i = {
                select = '<cr>',
                paste = '<c-p>',
                paste_behind = '<c-k>',
                replay = '<c-q>', -- replay a macro
                delete = '<c-d>', -- delete an entry
                custom = {},
            },
            n = {
                select = '<cr>',
                paste = 'p',
                --- It is possible to map to more than one key.
                -- paste = { 'p', '<c-p>' },
                paste_behind = 'P',
                replay = 'q',
                delete = 'd',
                custom = {},
            }

        }
    }
})
telescope.load_extension('neoclip')

local dropdown_theme = require('telescope.themes').get_dropdown({
    results_height = 20;
    winblend = 20;
    width = 0.8;
    prompt_title = '';
    prompt_prefix = 'Files>';
    previewer = true;
    borderchars = {
        prompt = { '▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
        results = { ' ', '▐', '▄', '▌', '▌', '▐', '▟', '▙' };
        preview = { '▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
    };
})

local themes = require('telescope.themes')

--Telescope find_files theme=dropdown
--nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>
--builtin.find_files(themes.get_dropdown({}))
--
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fc', builtin.neoclip, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', ':Telescope neoclip<CR>', {})
vim.keymap.set('n', '<leader>ftt', ':Telescope<CR>', {})

vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gs', builtin.git_stash, {})

--vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
