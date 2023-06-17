local haxe_extension = {
    filetypes = { 'haxe' },
    sections = {
        lualine_a = { 'branch', 'diagnostics' },
        lualine_b = { 'mode', 'trouble' },
        -- --lualine_a = { 'HaxeSelectHxml' },
        lualine_c = { 'filename' },
        -- --lualine_c = { 'HaxeSelectHxml', 'branch', 'diagnostics' },
        -- --lualine_d = { 'HaxeSelectHxml' },
        -- lualine_c = { 'branch', 'diagnostics' },
        -- -- lualine_x = {'encoding', 'fileformat', 'filetype'},
        -- lualine_x = { 'diff', 'progress' },
        -- lualine_y = { 'location', 'searchcount' },
        lualine_z = { 'filetype' }
    }
}
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        --component_separators = { left = '', right = ''},
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'filename' },
        lualine_d = { 'branch', 'diagnostics' },
        -- lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_x = { 'diff', 'progress' },
        lualine_y = { 'location', 'searchcount' },
        lualine_z = { 'filetype' }
    },
    inactive_sections = {
        lualine_a = { '' },
        lualine_b = { 'filename' },
        lualine_d = { 'branch', 'diagnostics' },
        -- lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_x = { },
        lualine_y = {  },
        lualine_z = { 'filetype' }
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {
        --'nvim-tree'
        --haxe_extension
    }
}
