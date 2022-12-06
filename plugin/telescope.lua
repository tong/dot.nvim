local telescope = require('telescope')
local builtin = require('telescope.builtin')
local actions = require("telescope.actions")

telescope.setup {
    defaults = {
        layout_config = {
            vertical = { width = 0.5 }
        },
        file_ignore_patterns = {
            "node_modules",
            "public"
        },
        mapping = {
            --i = { ["<C-h>"] = "which_key" }
            i = { ["<esc>"] = actions.close}
        }
    },
    pickers = {
        find_files = {
            theme = "ivy",
        }
    },
    extensions = {
        media_files = {
            --filetypes = {"png"}
        }
    }
}

telescope.load_extension('media_files')
--telescope.load_extension('octo')
--require("telescope").load_extension('gh')
telescope.load_extension('harpoon')

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
  previewer = false;
  borderchars = {
    prompt = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
    results = {' ', '▐', '▄', '▌', '▌', '▐', '▟', '▙' };
    preview = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙' };
  };
})


--local themes = require('telescope.themes')
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fc', builtin.neoclip, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', ':Telescope neoclip<CR>', {})
vim.keymap.set('n', '<leader>ft', ':Telescope<CR>', {})

--Telescope find_files theme=dropdown
--nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>

vim.keymap.set('n', '<leader>fgb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>fgc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>fgs', builtin.git_stash, {})

-- map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
-- map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
-- map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
-- map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
--
--builtin.find_files(themes.get_dropdown({}))

