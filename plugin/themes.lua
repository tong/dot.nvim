local onedark = require('onedark')
onedark.setup {
    style = 'dark',
    term_colors = true,
    transparent = false,
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = true, -- use background color for virtual text
    },
    lualine = {
        transparent = false,
    },
}
onedark.load()

-- local twodark = require('twodark')
-- twodark.setup {}


vim.cmd("colorscheme $COLORTHEME")
--vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
