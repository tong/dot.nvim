local theme = require('alpha.themes.startify')
theme.section.header.val = {
    [[                       __/\__]],
    [[                       \    /]],
    [[                 __/\__/    \__/\__]],
    [[                 \                /]],
    [[                 /__            __\]],
    [[                    \          /]],
    [[      __/\__      __/          \__      __/\__]],
    [[      \    /      \              /      \    /]],
    [[__/\__/    \__/\__/              \__/\__/    \__/\__]],
}
theme.section.bottom_buttons.val = {
    theme.button("q", "󱎘  Quit", ":qa<CR>"),
}
require('alpha').setup(theme.config)
