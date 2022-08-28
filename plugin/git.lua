local neogit = require('neogit')
neogit.setup {
    kind = "split",
    signs = {
        section = {"", "" },
        item = { "", "" },
    },
    sections = {
        untracked = {
            folded = false
        },
        unstaged = {
            folded = false
        },
        staged = {
            folded = false
        },
        stashes = {
            folded = false
        },
        unpulled = {
            folded = false
        },
        unmerged = {
            folded = false
        },
        recent = {
            folded = false
        },
    },
    integrations = {
        --diffview = true
    },
}
