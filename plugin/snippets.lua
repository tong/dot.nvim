local ls = require "luasnip"
local types = require "luasnip.util.types"
local snip = ls.snippet
local func = ls.function_node
local text = ls.text_node
local insert = ls.insert_node

ls.setup({
    snip_env = {
        s = function(...)
            local s = ls.s(...)
            -- we can't just access the global `ls_file_snippets`, since it will be
            -- resolved in the environment of the scope in which it was defined.
            table.insert(getfenv(2).ls_file_snippets, s)
        end,
        parse = function(...)
            table.insert(getfenv(2).ls_file_snippets, ls.parser.parse(...))
        end,
        -- remaining definitions.
        --...
    },
})

ls.config.setup({
    history = true,
    updateevents = "TextChanged,TextChangedI",
    store_selection_keys = '<c-s>',
    enable_autosnippets = true,
    ext_ops = {
        [types.choiceNode] = {
            active = {
                virt_text = {{"●", "GruvboxOrange"}}
            }
        },
        [types.insertNode] = {
            active = {
                virt_text = {{"●", "GruvboxBlue"}}
            }
        }
    }
})

-- local date = function() return { os.date('%Y-%m-%d') } end
-- ls.add_snippets(nil, {
--     all = { snip({ trig = "date", namr = "Date", dscr = "Date in the form of YYYY-MM-DD" }, { func(date, {}) }) }
-- })
-- local time = function() return { os.date('%H:%M:%S') } end
-- ls.add_snippets(nil, {
--     all = { snip({ trig = "time", namr = "Time", dscr = "Time in the form of HH-MM-SS" }, { func(time, {}) }) }
-- })

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })

vim.keymap.set({ "i", "s" }, "<c-j><c-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-k><c-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i" }, "<c-l><c-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

-- vim.keymap.set("i", "<c-u>", require "luasnip.extras.select_choice")
--vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/plugin/luasnip.lua<CR>")

--ls.filetype_extend("bash", {"sh"})
--ls.filetype_extend("vimwiki", {"md"})


